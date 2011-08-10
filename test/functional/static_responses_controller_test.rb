require 'test_helper'

class StaticResponsesControllerTest < ActionController::TestCase
  setup do
    @static_response = static_responses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:static_responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static_response" do
    assert_difference('StaticResponse.count') do
      post :create, static_response: @static_response.attributes
    end

    assert_redirected_to static_response_path(assigns(:static_response))
  end

  test "should show static_response" do
    get :show, id: @static_response.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @static_response.to_param
    assert_response :success
  end

  test "should update static_response" do
    put :update, id: @static_response.to_param, static_response: @static_response.attributes
    assert_redirected_to static_response_path(assigns(:static_response))
  end

  test "should destroy static_response" do
    assert_difference('StaticResponse.count', -1) do
      delete :destroy, id: @static_response.to_param
    end

    assert_redirected_to static_responses_path
  end
end
