require 'test_helper'

class CompletedOutcomesControllerTest < ActionController::TestCase
  setup do
    @completed_outcome = completed_outcomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:completed_outcomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create completed_outcome" do
    assert_difference('CompletedOutcome.count') do
      post :create, completed_outcome: { outcome_id: @completed_outcome.outcome_id, teaching_session_id: @completed_outcome.teaching_session_id }
    end

    assert_redirected_to completed_outcome_path(assigns(:completed_outcome))
  end

  test "should show completed_outcome" do
    get :show, id: @completed_outcome
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @completed_outcome
    assert_response :success
  end

  test "should update completed_outcome" do
    put :update, id: @completed_outcome, completed_outcome: { outcome_id: @completed_outcome.outcome_id, teaching_session_id: @completed_outcome.teaching_session_id }
    assert_redirected_to completed_outcome_path(assigns(:completed_outcome))
  end

  test "should destroy completed_outcome" do
    assert_difference('CompletedOutcome.count', -1) do
      delete :destroy, id: @completed_outcome
    end

    assert_redirected_to completed_outcomes_path
  end
end
