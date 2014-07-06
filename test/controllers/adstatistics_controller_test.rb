require 'test_helper'

class AdstatisticsControllerTest < ActionController::TestCase
  setup do
    @adstatistic = adstatistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adstatistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adstatistic" do
    assert_difference('Adstatistic.count') do
      post :create, adstatistic: { type: @adstatistic.type }
    end

    assert_redirected_to adstatistic_path(assigns(:adstatistic))
  end

  test "should show adstatistic" do
    get :show, id: @adstatistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adstatistic
    assert_response :success
  end

  test "should update adstatistic" do
    patch :update, id: @adstatistic, adstatistic: { type: @adstatistic.type }
    assert_redirected_to adstatistic_path(assigns(:adstatistic))
  end

  test "should destroy adstatistic" do
    assert_difference('Adstatistic.count', -1) do
      delete :destroy, id: @adstatistic
    end

    assert_redirected_to adstatistics_path
  end
end
