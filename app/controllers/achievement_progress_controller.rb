class AchievementProgressController < ApplicationController
  def show
    @achievement_progresses = current_user
      .achievement_progresses
      .includes(:achievement, :group)
    @achievement_progress = @achievement_progresses.find(params[:id])
    @achievement = @achievement_progress.achievement
    @select_collection = @achievement_progresses
      .where(achievement: { id: @achievement.id })
      .pluck({ group: :name }, :id)
  end
end
