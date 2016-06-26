require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { birth_date: @profile.birth_date, cell_phone: @profile.cell_phone, date: @profile.date, first_name: @profile.first_name, home_phone: @profile.home_phone, integer: @profile.integer, last_name: @profile.last_name, ssn: @profile.ssn, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, user_id: @profile.user_id, work_phone: @profile.work_phone }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { birth_date: @profile.birth_date, cell_phone: @profile.cell_phone, date: @profile.date, first_name: @profile.first_name, home_phone: @profile.home_phone, integer: @profile.integer, last_name: @profile.last_name, ssn: @profile.ssn, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, string: @profile.string, user_id: @profile.user_id, work_phone: @profile.work_phone }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
