class ChangeGroupIdNullToAchievementProgresses < ActiveRecord::Migration[8.0]
  def change
    change_column_null(:achievement_progresses, :group_id, false)
  end
end
