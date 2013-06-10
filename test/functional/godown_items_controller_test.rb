require 'test_helper'

class GodownItemsControllerTest < ActionController::TestCase
  setup do
    @godown_item = godown_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:godown_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create godown_item" do
    assert_difference('GodownItem.count') do
      post :create, godown_item: { godown_entry_id: @godown_item.godown_entry_id, product_data_id: @godown_item.product_data_id, product_data_type: @godown_item.product_data_type, quantity: @godown_item.quantity, status: @godown_item.status }
    end

    assert_redirected_to godown_item_path(assigns(:godown_item))
  end

  test "should show godown_item" do
    get :show, id: @godown_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @godown_item
    assert_response :success
  end

  test "should update godown_item" do
    put :update, id: @godown_item, godown_item: { godown_entry_id: @godown_item.godown_entry_id, product_data_id: @godown_item.product_data_id, product_data_type: @godown_item.product_data_type, quantity: @godown_item.quantity, status: @godown_item.status }
    assert_redirected_to godown_item_path(assigns(:godown_item))
  end

  test "should destroy godown_item" do
    assert_difference('GodownItem.count', -1) do
      delete :destroy, id: @godown_item
    end

    assert_redirected_to godown_items_path
  end
end
