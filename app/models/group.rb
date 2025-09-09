class Group < ApplicationRecord
  enum :kind, { close: 0, open: 10 }

  has_and_belongs_to_many :users
  has_many :achievement_progresses
  has_many :achievements, through: :achievement_progresses

  validates :name, :kind, presence: true
end
