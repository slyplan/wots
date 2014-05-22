require 'test_helper'

class Toolset::ClimesControllerTest < ActionController::TestCase
  setup do
    @toolset_clime = toolset_climes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:toolset_climes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create toolset_clime" do
    assert_difference('Toolset::Clime.count') do
      post :create, toolset_clime: {  }
    end

    assert_redirected_to toolset_clime_path(assigns(:toolset_clime))
  end

  test "should show toolset_clime" do
    get :show, id: @toolset_clime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @toolset_clime
    assert_response :success
  end

  test "should update toolset_clime" do
    put :update, id: @toolset_clime, toolset_clime: {  }
    assert_redirected_to toolset_clime_path(assigns(:toolset_clime))
  end

  test "should destroy toolset_clime" do
    assert_difference('Toolset::Clime.count', -1) do
      delete :destroy, id: @toolset_clime
    end

    assert_redirected_to toolset_climes_path
  end
end
