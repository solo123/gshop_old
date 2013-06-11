require 'test_helper'

class SalesSheetItemsControllerTest < ActionController::TestCase
  setup do
    @sales_sheet_item = sales_sheet_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_sheet_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_sheet_item" do
    assert_difference('SalesSheetItem.count') do
      post :create, sales_sheet_item: { amount: @sales_sheet_item.amount, price: @sales_sheet_item.price, product_data_id: @sales_sheet_item.product_data_id, product_data_type: @sales_sheet_item.product_data_type, quantity: @sales_sheet_item.quantity, sales_sheet_id: @sales_sheet_item.sales_sheet_id }
    end

    assert_redirected_to sales_sheet_item_path(assigns(:sales_sheet_item))
  end

  test "should show sales_sheet_item" do
    get :show, id: @sales_sheet_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_sheet_item
    assert_response :success
  end

  test "should update sales_sheet_item" do
    put :update, id: @sales_sheet_item, sales_sheet_item: { amount: @sales_sheet_item.amount, price: @sales_sheet_item.price, product_data_id: @sales_sheet_item.product_data_id, product_data_type: @sales_sheet_item.product_data_type, quantity: @sales_sheet_item.quantity, sales_sheet_id: @sales_sheet_item.sales_sheet_id }
    assert_redirected_to sales_sheet_item_path(assigns(:sales_sheet_item))
  end

  test "should destroy sales_sheet_item" do
    assert_difference('SalesSheetItem.count', -1) do
      delete :destroy, id: @sales_sheet_item
    end

    assert_redirected_to sales_sheet_items_path
  end
end
