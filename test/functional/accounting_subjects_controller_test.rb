require 'test_helper'

class AccountingSubjectsControllerTest < ActionController::TestCase
  setup do
    @accounting_subject = accounting_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accounting_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accounting_subject" do
    assert_difference('AccountingSubject.count') do
      post :create, accounting_subject: { short_code: @accounting_subject.short_code, status: @accounting_subject.status, title: @accounting_subject.title }
    end

    assert_redirected_to accounting_subject_path(assigns(:accounting_subject))
  end

  test "should show accounting_subject" do
    get :show, id: @accounting_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accounting_subject
    assert_response :success
  end

  test "should update accounting_subject" do
    put :update, id: @accounting_subject, accounting_subject: { short_code: @accounting_subject.short_code, status: @accounting_subject.status, title: @accounting_subject.title }
    assert_redirected_to accounting_subject_path(assigns(:accounting_subject))
  end

  test "should destroy accounting_subject" do
    assert_difference('AccountingSubject.count', -1) do
      delete :destroy, id: @accounting_subject
    end

    assert_redirected_to accounting_subjects_path
  end
end
