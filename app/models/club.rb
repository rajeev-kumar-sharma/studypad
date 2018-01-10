class Club < ActiveRecord::Base

  validates :name, presence: true

  has_many :players

end
