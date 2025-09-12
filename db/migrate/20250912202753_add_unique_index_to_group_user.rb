class AddUniqueIndexToGroupUser < ActiveRecord::Migration[8.0]
  def change
    remove_index(:groups_users, :user_id)
    add_index(:groups_users, [:user_id, :group_id], unique: true)
  end
end
