class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :groups
  has_many :friendships
  has_many :friends, through: :friendships
  has_many :group_achievements, through: :groups, source: :achievements
  has_many :friendship_achievements, through: :friendships, source: :achievements
end
