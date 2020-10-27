require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get board" do
    get dashboard_board_url
    assert_response :success
  end

end
