class Achievement < ApplicationRecord
  has_many :achievement_progresses
  has_many :groups, through: :achievement_progresses
  has_many :friendships, through: :achievement_progresses

  validates :name, :description, :icon, :kind, presence: true
end
