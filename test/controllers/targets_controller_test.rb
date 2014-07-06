require 'test_helper'

class TargetsControllerTest < ActionController::TestCase
  setup do
    @target = targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create target" do
    assert_difference('Target.count') do
      post :create, target: { action_tag: @target.action_tag, descriptor_tag: @target.descriptor_tag, price_tag: @target.price_tag, venue_city: @target.venue_city, venue_name: @target.venue_name, venue_state: @target.venue_state, venue_street: @target.venue_street, venue_zip: @target.venue_zip }
    end

    assert_redirected_to target_path(assigns(:target))
  end

  test "should show target" do
    get :show, id: @target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @target
    assert_response :success
  end

  test "should update target" do
    patch :update, id: @target, target: { action_tag: @target.action_tag, descriptor_tag: @target.descriptor_tag, price_tag: @target.price_tag, venue_city: @target.venue_city, venue_name: @target.venue_name, venue_state: @target.venue_state, venue_street: @target.venue_street, venue_zip: @target.venue_zip }
    assert_redirected_to target_path(assigns(:target))
  end

  test "should destroy target" do
    assert_difference('Target.count', -1) do
      delete :destroy, id: @target
    end

    assert_redirected_to targets_path
  end
end
