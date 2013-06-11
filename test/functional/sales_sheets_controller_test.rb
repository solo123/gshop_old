require 'test_helper'

class SalesSheetsControllerTest < ActionController::TestCase
  setup do
    @sales_sheet = sales_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_sheet" do
    assert_difference('SalesSheet.count') do
      post :create, sales_sheet: { actual_amount: @sales_sheet.actual_amount, additional_fee: @sales_sheet.additional_fee, customer_id: @sales_sheet.customer_id, discount: @sales_sheet.discount, operator_id: @sales_sheet.operator_id, status: @sales_sheet.status, total_amount: @sales_sheet.total_amount, total_items: @sales_sheet.total_items, warehouse_id: @sales_sheet.warehouse_id }
    end

    assert_redirected_to sales_sheet_path(assigns(:sales_sheet))
  end

  test "should show sales_sheet" do
    get :show, id: @sales_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_sheet
    assert_response :success
  end

  test "should update sales_sheet" do
    put :update, id: @sales_sheet, sales_sheet: { actual_amount: @sales_sheet.actual_amount, additional_fee: @sales_sheet.additional_fee, customer_id: @sales_sheet.customer_id, discount: @sales_sheet.discount, operator_id: @sales_sheet.operator_id, status: @sales_sheet.status, total_amount: @sales_sheet.total_amount, total_items: @sales_sheet.total_items, warehouse_id: @sales_sheet.warehouse_id }
    assert_redirected_to sales_sheet_path(assigns(:sales_sheet))
  end

  test "should destroy sales_sheet" do
    assert_difference('SalesSheet.count', -1) do
      delete :destroy, id: @sales_sheet
    end

    assert_redirected_to sales_sheets_path
  end
end
