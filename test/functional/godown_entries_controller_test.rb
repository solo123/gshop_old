require 'test_helper'

class GodownEntriesControllerTest < ActionController::TestCase
  setup do
    @godown_entry = godown_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:godown_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create godown_entry" do
    assert_difference('GodownEntry.count') do
      post :create, godown_entry: { from_warehouse_id: @godown_entry.from_warehouse_id, godown_date: @godown_entry.godown_date, info: @godown_entry.info, manufactory_id: @godown_entry.manufactory_id, operator: @godown_entry.operator, to_warehouse_id: @godown_entry.to_warehouse_id, total_items: @godown_entry.total_items }
    end

    assert_redirected_to godown_entry_path(assigns(:godown_entry))
  end

  test "should show godown_entry" do
    get :show, id: @godown_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @godown_entry
    assert_response :success
  end

  test "should update godown_entry" do
    put :update, id: @godown_entry, godown_entry: { from_warehouse_id: @godown_entry.from_warehouse_id, godown_date: @godown_entry.godown_date, info: @godown_entry.info, manufactory_id: @godown_entry.manufactory_id, operator: @godown_entry.operator, to_warehouse_id: @godown_entry.to_warehouse_id, total_items: @godown_entry.total_items }
    assert_redirected_to godown_entry_path(assigns(:godown_entry))
  end

  test "should destroy godown_entry" do
    assert_difference('GodownEntry.count', -1) do
      delete :destroy, id: @godown_entry
    end

    assert_redirected_to godown_entries_path
  end
end
