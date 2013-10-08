require 'test_helper'

class TeachingFormatsControllerTest < ActionController::TestCase
  setup do
    @teaching_format = teaching_formats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teaching_formats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teaching_format" do
    assert_difference('TeachingFormat.count') do
      post :create, teaching_format: { format: @teaching_format.format }
    end

    assert_redirected_to teaching_format_path(assigns(:teaching_format))
  end

  test "should show teaching_format" do
    get :show, id: @teaching_format
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teaching_format
    assert_response :success
  end

  test "should update teaching_format" do
    put :update, id: @teaching_format, teaching_format: { format: @teaching_format.format }
    assert_redirected_to teaching_format_path(assigns(:teaching_format))
  end

  test "should destroy teaching_format" do
    assert_difference('TeachingFormat.count', -1) do
      delete :destroy, id: @teaching_format
    end

    assert_redirected_to teaching_formats_path
  end
end
