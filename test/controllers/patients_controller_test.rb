require 'test_helper'

class PatientsControllerTest < ActionDispatch::IntegrationTest
  test "should get board" do
    get patients_board_url
    assert_response :success
  end

end
