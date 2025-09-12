class CreateAchievementsCategories < ActiveRecord::Migration[8.0]
  def change
    create_table :achievements_categories do |t|
      t.belongs_to :achievement, foreign_key: true, null: false, index: false
      t.belongs_to :category, foreign_key: true, null: false

      t.index [:achievement_id, :category_id], unique: true

      t.timestamps
    end
  end
end
