class CreateUsersGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :groups_users do |t|
      t.belongs_to :user, null: false
      t.belongs_to :group, null: false
      t.timestamps
    end
  end
end
