require 'test_helper'

class MicrolocationsControllerTest < ActionController::TestCase
  setup do
    @microlocation = microlocations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microlocations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microlocation" do
    assert_difference('Microlocation.count') do
      post :create, microlocation: { action_tag: @microlocation.action_tag, descriptor_tag: @microlocation.descriptor_tag, major_id: @microlocation.major_id, minor_id: @microlocation.minor_id, name: @microlocation.name, price_tag: @microlocation.price_tag, uuid: @microlocation.uuid }
    end

    assert_redirected_to microlocation_path(assigns(:microlocation))
  end

  test "should show microlocation" do
    get :show, id: @microlocation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microlocation
    assert_response :success
  end

  test "should update microlocation" do
    patch :update, id: @microlocation, microlocation: { action_tag: @microlocation.action_tag, descriptor_tag: @microlocation.descriptor_tag, major_id: @microlocation.major_id, minor_id: @microlocation.minor_id, name: @microlocation.name, price_tag: @microlocation.price_tag, uuid: @microlocation.uuid }
    assert_redirected_to microlocation_path(assigns(:microlocation))
  end

  test "should destroy microlocation" do
    assert_difference('Microlocation.count', -1) do
      delete :destroy, id: @microlocation
    end

    assert_redirected_to microlocations_path
  end
end
