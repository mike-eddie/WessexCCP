require 'test_helper'

class FeedbackControllerTest < ActionController::TestCase
  test "should get complete" do
    get :complete
    assert_response :success
  end

end
