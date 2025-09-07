class CreateAchievements < ActiveRecord::Migration[8.0]
  def change
    create_table :achievements do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :icon, null: false
      t.integer :kind, null: false

      t.timestamps
    end
  end
end
