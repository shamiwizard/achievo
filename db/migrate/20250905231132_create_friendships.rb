class CreateFriendships < ActiveRecord::Migration[8.0]
  def change
    create_table :friendships do |t|
      t.belongs_to :user, foreign_key: { to_table: :users }, null: false
      t.belongs_to :friend, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
