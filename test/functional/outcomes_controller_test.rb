require 'test_helper'

class OutcomesControllerTest < ActionController::TestCase
  setup do
    @outcome = outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outcome" do
    assert_difference('Outcome.count') do
      post :create, outcome: { outcome: @outcome.outcome, topic_id: @outcome.topic_id }
    end

    assert_redirected_to outcome_path(assigns(:outcome))
  end

  test "should show outcome" do
    get :show, id: @outcome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outcome
    assert_response :success
  end

  test "should update outcome" do
    put :update, id: @outcome, outcome: { outcome: @outcome.outcome, topic_id: @outcome.topic_id }
    assert_redirected_to outcome_path(assigns(:outcome))
  end

  test "should destroy outcome" do
    assert_difference('Outcome.count', -1) do
      delete :destroy, id: @outcome
    end

    assert_redirected_to outcomes_path
  end
end
