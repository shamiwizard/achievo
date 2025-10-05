require "test_helper"

class AchievementProgressControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get achievement_progress_index_url
    assert_response :success
  end
end
