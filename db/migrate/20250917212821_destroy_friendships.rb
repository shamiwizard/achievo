class DestroyFriendships < ActiveRecord::Migration[8.0]
  def change
    remove_reference :achievement_progresses, :friendships, foreign_key: true

    drop_table :friendships, if_exists: true do |t|
      t.belongs_to :user, foreign_key: { to_table: :users }, null: false
      t.belongs_to :friend, foreign_key: { to_table: :users }, null: false
      t.timestamps
    end
  end
end
