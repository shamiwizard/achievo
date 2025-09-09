class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, foreign_key: :friend_id, class_name: 'User'
  has_many :achievement_progresses
  has_many :achievements, through: :achievement_progresses
end
