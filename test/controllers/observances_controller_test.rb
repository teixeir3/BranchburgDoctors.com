require 'test_helper'

class ObservancesControllerTest < ActionController::TestCase
  setup do
    @observance = observances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:observances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create observance" do
    assert_difference('Observance.count') do
      post :create, observance: { description: @observance.description, link: @observance.link, name: @observance.name, photo_id: @observance.photo_id, start_date: @observance.start_date }
    end

    assert_redirected_to observance_path(assigns(:observance))
  end

  test "should show observance" do
    get :show, id: @observance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @observance
    assert_response :success
  end

  test "should update observance" do
    patch :update, id: @observance, observance: { description: @observance.description, link: @observance.link, name: @observance.name, photo_id: @observance.photo_id, start_date: @observance.start_date }
    assert_redirected_to observance_path(assigns(:observance))
  end

  test "should destroy observance" do
    assert_difference('Observance.count', -1) do
      delete :destroy, id: @observance
    end

    assert_redirected_to observances_path
  end
end
