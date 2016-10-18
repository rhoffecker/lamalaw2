require 'test_helper'

class OppPartiesControllerTest < ActionController::TestCase
  setup do
    @opp_party = opp_parties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opp_parties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opp_party" do
    assert_difference('OppParty.count') do
      post :create, opp_party: {  }
    end

    assert_redirected_to opp_party_path(assigns(:opp_party))
  end

  test "should show opp_party" do
    get :show, id: @opp_party
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opp_party
    assert_response :success
  end

  test "should update opp_party" do
    patch :update, id: @opp_party, opp_party: {  }
    assert_redirected_to opp_party_path(assigns(:opp_party))
  end

  test "should destroy opp_party" do
    assert_difference('OppParty.count', -1) do
      delete :destroy, id: @opp_party
    end

    assert_redirected_to opp_parties_path
  end
end
