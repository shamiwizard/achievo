class HomeController < ApplicationController
  def index
    @achievement_progresses = current_user.achievement_progresses.includes(achievement: :categories)
    @categories = Category.find(@achievement_progresses.distinct.pluck(:category_id))
    @statuses = @achievement_progresses.distinct.pluck(:status)
  end
end
