class Game < ActiveRecord::Base

  attr_accessor :player_id, :against_id

  enum status: [ :over, :live ]

  validates :home_club_id, :away_club_id, :league_id, :stadium_id, presence: true

  belongs_to :league
  belongs_to :home_club, class_name: 'Club', foreign_key: 'home_club_id'
  belongs_to :away_club, class_name: 'Club', foreign_key: 'away_club_id'
  belongs_to :stadium

  after_update :create_goal_stats

  def home_goal
    if home_goals
      home_goals += 1
    else
      home_goals = 1
    end
    save
  end

  def away_goal
    if away_goals
      away_goals += 1
    else
      away_goals = 1
    end
    save
  end

  def create_goal_stats
    if home_goals_changed? || away_goals_changed?
      goal_stat = GoalStat.find_by(player_id: player_id, game_id: id)
      if goal_stat
        goal_stat.goals += 1
        goal_stat.save
      else
        GoalStat.create({ player_id: player_id, game_id: id,
          league_id: league_id, goals: 1, away_club_id: against_id
        })
      end
    end
  end
end
