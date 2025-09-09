class CreateAchievementProgresses < ActiveRecord::Migration[8.0]
  def change
    create_table :achievement_progresses do |t|
      t.references :friendship, foreign_key: true
      t.references :group, foreign_key: true
      t.references :achievement, foreign_key: true, null: false
      t.integer    :status, null: false, default: 0
      t.integer    :progress, null: false, default: 0
      t.timestamp  :started_at
      t.timestamp  :unlocked_at

      t.timestamps
    end
  end
end
