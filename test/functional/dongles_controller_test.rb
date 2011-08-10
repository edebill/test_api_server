require 'test_helper'

class DonglesControllerTest < ActionController::TestCase
  setup do
    @dongle = dongles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dongles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dongle" do
    assert_difference('Dongle.count') do
      post :create, dongle: @dongle.attributes
    end

    assert_redirected_to dongle_path(assigns(:dongle))
  end

  test "should show dongle" do
    get :show, id: @dongle.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dongle.to_param
    assert_response :success
  end

  test "should update dongle" do
    put :update, id: @dongle.to_param, dongle: @dongle.attributes
    assert_redirected_to dongle_path(assigns(:dongle))
  end

  test "should destroy dongle" do
    assert_difference('Dongle.count', -1) do
      delete :destroy, id: @dongle.to_param
    end

    assert_redirected_to dongles_path
  end
end
