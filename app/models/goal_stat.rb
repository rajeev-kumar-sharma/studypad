class GoalStat < ActiveRecord::Base
  
  validates :player_id, :game_id, :away_club_id, presence: true

  belongs_to :player
  belongs_to :game
  belongs_to :away_club, class_name: 'Club', foreign_key: 'away_club_id'

end
