require 'test_helper'

class StockJournalsControllerTest < ActionController::TestCase
  setup do
    @stock_journal = stock_journals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_journals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_journal" do
    assert_difference('StockJournal.count') do
      post :create, stock_journal: { stock_after: @stock_journal.stock_after, stock_before: @stock_journal.stock_before, stock_godown: @stock_journal.stock_godown, stock_id: @stock_journal.stock_id }
    end

    assert_redirected_to stock_journal_path(assigns(:stock_journal))
  end

  test "should show stock_journal" do
    get :show, id: @stock_journal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_journal
    assert_response :success
  end

  test "should update stock_journal" do
    put :update, id: @stock_journal, stock_journal: { stock_after: @stock_journal.stock_after, stock_before: @stock_journal.stock_before, stock_godown: @stock_journal.stock_godown, stock_id: @stock_journal.stock_id }
    assert_redirected_to stock_journal_path(assigns(:stock_journal))
  end

  test "should destroy stock_journal" do
    assert_difference('StockJournal.count', -1) do
      delete :destroy, id: @stock_journal
    end

    assert_redirected_to stock_journals_path
  end
end
