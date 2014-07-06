require 'test_helper'

class MediabuyersControllerTest < ActionController::TestCase
  setup do
    @mediabuyer = mediabuyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mediabuyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mediabuyer" do
    assert_difference('Mediabuyer.count') do
      post :create, mediabuyer: { first_name: @mediabuyer.first_name, last_name: @mediabuyer.last_name, password: @mediabuyer.password, permission: @mediabuyer.permission, phone: @mediabuyer.phone }
    end

    assert_redirected_to mediabuyer_path(assigns(:mediabuyer))
  end

  test "should show mediabuyer" do
    get :show, id: @mediabuyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mediabuyer
    assert_response :success
  end

  test "should update mediabuyer" do
    patch :update, id: @mediabuyer, mediabuyer: { first_name: @mediabuyer.first_name, last_name: @mediabuyer.last_name, password: @mediabuyer.password, permission: @mediabuyer.permission, phone: @mediabuyer.phone }
    assert_redirected_to mediabuyer_path(assigns(:mediabuyer))
  end

  test "should destroy mediabuyer" do
    assert_difference('Mediabuyer.count', -1) do
      delete :destroy, id: @mediabuyer
    end

    assert_redirected_to mediabuyers_path
  end
end
