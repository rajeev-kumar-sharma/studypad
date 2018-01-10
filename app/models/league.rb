class League < ActiveRecord::Base
  
  validates :name, :country, presence: true
  validate :end_date_after_start_date?

  has_many :games, dependent: :destroy

  def end_date_after_start_date?
    if end_date <= start_date
      errors.add :end_date, "must be after start date"
    end
  end

  scope :standings, (lambda do |league_id|
    query = %{
      WITH results AS 
      ( 
        SELECT g.home_club_id, g.home_goals, g.away_club_id, g.away_goals from games AS g WHERE league_id = '#{league_id}'
        UNION ALL
        SELECT g.away_club_id, g.away_goals, g.home_club_id, g.home_goals from games AS g where league_id = '#{league_id}'
      ),
      club_results AS
      (
        SELECT home_club_id,
        SUM(CASE WHEN home_goals > away_goals THEN 1 ELSE 0 END) as win,
        SUM(CASE WHEN away_goals > home_goals THEN 1 ELSE 0 END) as lost,
        SUM(CASE WHEN home_goals = away_goals then 1 ELSE 0 END) as drawn,
        SUM(CASE WHEN home_goals > away_goals THEN 3 WHEN away_goals > home_goals THEN 0 WHEN home_goals = away_goals THEN 1 ELSE 0 END) as points,
        COALESCE(SUM(home_goals), 0) as goals_scored,
        COALESCE(SUM(away_goals), 0) as goals_conceded 
        FROM results GROUP BY home_club_id
      )
      SELECT DISTINCT c.id, c.name, win + lost + drawn AS games_played, win, lost, drawn, points, goals_scored - goals_conceded AS goal_difference, goals_scored
      FROM club_results cr JOIN clubs c ON (cr.home_club_id = c.id)
      ORDER BY points DESC, goal_difference DESC, goals_scored DESC
    }

    ActiveRecord::Base.connection.execute(query)
  end)

end
