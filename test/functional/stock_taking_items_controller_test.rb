require 'test_helper'

class StockTakingItemsControllerTest < ActionController::TestCase
  setup do
    @stock_taking_item = stock_taking_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_taking_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_taking_item" do
    assert_difference('StockTakingItem.count') do
      post :create, stock_taking_item: { product_data_id: @stock_taking_item.product_data_id, product_data_type: @stock_taking_item.product_data_type, quantity: @stock_taking_item.quantity, status: @stock_taking_item.status, stock_taking_id: @stock_taking_item.stock_taking_id }
    end

    assert_redirected_to stock_taking_item_path(assigns(:stock_taking_item))
  end

  test "should show stock_taking_item" do
    get :show, id: @stock_taking_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_taking_item
    assert_response :success
  end

  test "should update stock_taking_item" do
    put :update, id: @stock_taking_item, stock_taking_item: { product_data_id: @stock_taking_item.product_data_id, product_data_type: @stock_taking_item.product_data_type, quantity: @stock_taking_item.quantity, status: @stock_taking_item.status, stock_taking_id: @stock_taking_item.stock_taking_id }
    assert_redirected_to stock_taking_item_path(assigns(:stock_taking_item))
  end

  test "should destroy stock_taking_item" do
    assert_difference('StockTakingItem.count', -1) do
      delete :destroy, id: @stock_taking_item
    end

    assert_redirected_to stock_taking_items_path
  end
end
