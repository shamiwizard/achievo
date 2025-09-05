class Group < ApplicationRecord
  enum :kind, { close: 0, open: 10 }

  has_and_belongs_to_many :users
end
