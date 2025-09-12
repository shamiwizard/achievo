class Category < ApplicationRecord
  has_and_belongs_to_many :achievements

  validates :name, presence: true
end
