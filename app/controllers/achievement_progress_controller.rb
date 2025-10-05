class AchievementProgressController < ApplicationController
  def index
  @achievement_progress = current_user.achievement_progresses.includes(:achievement).find(params[:id]) 
  end

  def show 
  @achievement_progress = current_user.achievement_progresses.includes(:achievement).find(params[:id]) 
  end
end
