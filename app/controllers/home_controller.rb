class HomeController < ApplicationController
  def index
    @achievements = current_user.achievements.includes(:categories)
    @categories = Category.find(@achievements.distinct.pluck(:category_id))

  end
end
