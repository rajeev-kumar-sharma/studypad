class Stadium < ActiveRecord::Base

  validates :name, :location, :club_id, :capacity, presence: true

  validates_uniqueness_of :name, scope: [:club_id], case_sensitive: false

  belongs_to :club
end
