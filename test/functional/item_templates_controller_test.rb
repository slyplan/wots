require 'test_helper'

class ItemTemplatesControllerTest < ActionController::TestCase
  setup do
    @item_template = item_templates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_templates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_template" do
    assert_difference('ItemTemplate.count') do
      post :create, item_template: { descr: @item_template.descr, kind: @item_template.kind, name: @item_template.name }
    end

    assert_redirected_to item_template_path(assigns(:item_template))
  end

  test "should show item_template" do
    get :show, id: @item_template
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_template
    assert_response :success
  end

  test "should update item_template" do
    put :update, id: @item_template, item_template: { descr: @item_template.descr, kind: @item_template.kind, name: @item_template.name }
    assert_redirected_to item_template_path(assigns(:item_template))
  end

  test "should destroy item_template" do
    assert_difference('ItemTemplate.count', -1) do
      delete :destroy, id: @item_template
    end

    assert_redirected_to item_templates_path
  end
end
