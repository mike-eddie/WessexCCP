require 'test_helper'

class PortfolioControllerTest < ActionController::TestCase
  test "should get my_attendance" do
    get :my_attendance
    assert_response :success
  end

end
