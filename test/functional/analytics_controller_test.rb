require 'test_helper'

class AnalyticsControllerTest < ActionController::TestCase
  test "should get feedback" do
    get :feedback
    assert_response :success
  end

end
