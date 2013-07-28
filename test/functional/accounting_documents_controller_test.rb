require 'test_helper'

class AccountingDocumentsControllerTest < ActionController::TestCase
  setup do
    @accounting_document = accounting_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_document" do
    assert_difference('AccountingDocument.count') do
      post :create, accounting_document: { operator: @accounting_document.operator }
    end

    assert_redirected_to accounting_document_path(assigns(:accounting_document))
  end

  test "should show accounting_document" do
    get :show, id: @accounting_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_document
    assert_response :success
  end

  test "should update accounting_document" do
    put :update, id: @accounting_document, accounting_document: { operator: @accounting_document.operator }
    assert_redirected_to accounting_document_path(assigns(:accounting_document))
  end

  test "should destroy accounting_document" do
    assert_difference('AccountingDocument.count', -1) do
      delete :destroy, id: @accounting_document
    end

    assert_redirected_to accounting_documents_path
  end
end
