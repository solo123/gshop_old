require 'test_helper'

class AccountingDocumentItemsControllerTest < ActionController::TestCase
  setup do
    @accounting_document_item = accounting_document_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_document_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_document_item" do
    assert_difference('AccountingDocumentItem.count') do
      post :create, accounting_document_item: { accounting_subject: @accounting_document_item.accounting_subject, brief: @accounting_document_item.brief, credit: @accounting_document_item.credit, debit: @accounting_document_item.debit }
    end

    assert_redirected_to accounting_document_item_path(assigns(:accounting_document_item))
  end

  test "should show accounting_document_item" do
    get :show, id: @accounting_document_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_document_item
    assert_response :success
  end

  test "should update accounting_document_item" do
    put :update, id: @accounting_document_item, accounting_document_item: { accounting_subject: @accounting_document_item.accounting_subject, brief: @accounting_document_item.brief, credit: @accounting_document_item.credit, debit: @accounting_document_item.debit }
    assert_redirected_to accounting_document_item_path(assigns(:accounting_document_item))
  end

  test "should destroy accounting_document_item" do
    assert_difference('AccountingDocumentItem.count', -1) do
      delete :destroy, id: @accounting_document_item
    end

    assert_redirected_to accounting_document_items_path
  end
end
