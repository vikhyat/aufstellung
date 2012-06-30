require 'test_helper'

class ItemClassesControllerTest < ActionController::TestCase
  setup do
    @item_class = item_classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_class" do
    assert_difference('ItemClass.count') do
      post :create, item_class: { price: @item_class.price, title: @item_class.title }
    end

    assert_redirected_to item_class_path(assigns(:item_class))
  end

  test "should show item_class" do
    get :show, id: @item_class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_class
    assert_response :success
  end

  test "should update item_class" do
    put :update, id: @item_class, item_class: { price: @item_class.price, title: @item_class.title }
    assert_redirected_to item_class_path(assigns(:item_class))
  end

  test "should destroy item_class" do
    assert_difference('ItemClass.count', -1) do
      delete :destroy, id: @item_class
    end

    assert_redirected_to item_classes_path
  end
end
