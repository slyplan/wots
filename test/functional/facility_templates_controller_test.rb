require 'test_helper'

class FacilityTemplatesControllerTest < ActionController::TestCase
  setup do
    @facility_template = facility_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facility_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facility_template" do
    assert_difference('FacilityTemplate.count') do
      post :create, facility_template: { descr: @facility_template.descr, kind: @facility_template.kind, name: @facility_template.name, visibility: @facility_template.visibility }
    end

    assert_redirected_to facility_template_path(assigns(:facility_template))
  end

  test "should show facility_template" do
    get :show, id: @facility_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facility_template
    assert_response :success
  end

  test "should update facility_template" do
    put :update, id: @facility_template, facility_template: { descr: @facility_template.descr, kind: @facility_template.kind, name: @facility_template.name, visibility: @facility_template.visibility }
    assert_redirected_to facility_template_path(assigns(:facility_template))
  end

  test "should destroy facility_template" do
    assert_difference('FacilityTemplate.count', -1) do
      delete :destroy, id: @facility_template
    end

    assert_redirected_to facility_templates_path
  end
end
