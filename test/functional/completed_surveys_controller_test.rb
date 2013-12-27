require 'test_helper'

class CompletedSurveysControllerTest < ActionController::TestCase
  setup do
    @completed_survey = completed_surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:completed_surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create completed_survey" do
    assert_difference('CompletedSurvey.count') do
      post :create, completed_survey: { complete: @completed_survey.complete, student_num: @completed_survey.student_num, survey_id: @completed_survey.survey_id }
    end

    assert_redirected_to completed_survey_path(assigns(:completed_survey))
  end

  test "should show completed_survey" do
    get :show, id: @completed_survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @completed_survey
    assert_response :success
  end

  test "should update completed_survey" do
    put :update, id: @completed_survey, completed_survey: { complete: @completed_survey.complete, student_num: @completed_survey.student_num, survey_id: @completed_survey.survey_id }
    assert_redirected_to completed_survey_path(assigns(:completed_survey))
  end

  test "should destroy completed_survey" do
    assert_difference('CompletedSurvey.count', -1) do
      delete :destroy, id: @completed_survey
    end

    assert_redirected_to completed_surveys_path
  end
end
