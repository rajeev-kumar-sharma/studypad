class Player < ActiveRecord::Base

  validates :first_name, :club_id, presence: true
  # validates_uniqueness_of :name, scope: [:club_id], case_sensitive: false

  belongs_to :club
  has_many :goal_stats

  def name
    [first_name.try(:strip), last_name.try(:strip)].compact.join(' ')
  end

  scope :stats, (lambda do |player_id, league_id|
    select('clubs.name AS away_club, sum(goal_stats.goals) AS goal_scored')
    .joins(:goal_stats)
    .joins('JOIN clubs ON goal_stats.away_club_id = clubs.id')
    .where('players.id = ? AND goal_stats.league_id = ?', player_id, league_id)
    .group('clubs.id').order('goal_scored')
  end)
  
end
