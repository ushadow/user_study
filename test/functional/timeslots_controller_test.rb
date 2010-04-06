require 'test_helper'

class TimeslotsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timeslots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timeslot" do
    assert_difference('Timeslot.count') do
      post :create, :timeslot => { }
    end

    assert_redirected_to timeslot_path(assigns(:timeslot))
  end

  test "should show timeslot" do
    get :show, :id => timeslots(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => timeslots(:one).to_param
    assert_response :success
  end

  test "should update timeslot" do
    put :update, :id => timeslots(:one).to_param, :timeslot => { }
    assert_redirected_to timeslot_path(assigns(:timeslot))
  end

  test "should destroy timeslot" do
    assert_difference('Timeslot.count', -1) do
      delete :destroy, :id => timeslots(:one).to_param
    end

    assert_redirected_to timeslots_path
  end
end
