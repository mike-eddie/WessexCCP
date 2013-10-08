require 'test_helper'

class TeachingSessionsControllerTest < ActionController::TestCase
  setup do
    @teaching_session = teaching_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_session" do
    assert_difference('TeachingSession.count') do
      post :create, teaching_session: { date: @teaching_session.date, title: @teaching_session.title }
    end

    assert_redirected_to teaching_session_path(assigns(:teaching_session))
  end

  test "should show teaching_session" do
    get :show, id: @teaching_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_session
    assert_response :success
  end

  test "should update teaching_session" do
    put :update, id: @teaching_session, teaching_session: { date: @teaching_session.date, title: @teaching_session.title }
    assert_redirected_to teaching_session_path(assigns(:teaching_session))
  end

  test "should destroy teaching_session" do
    assert_difference('TeachingSession.count', -1) do
      delete :destroy, id: @teaching_session
    end

    assert_redirected_to teaching_sessions_path
  end
end
