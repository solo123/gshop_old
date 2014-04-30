require 'test_helper'

class ProductSpecificationsControllerTest < ActionController::TestCase
  setup do
    @product_specification = product_specifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_specifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_specification" do
    assert_difference('ProductSpecification.count') do
      post :create, product_specification: { product_id: @product_specification.product_id, spec_text: @product_specification.spec_text, specification_id: @product_specification.specification_id }
    end

    assert_redirected_to product_specification_path(assigns(:product_specification))
  end

  test "should show product_specification" do
    get :show, id: @product_specification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_specification
    assert_response :success
  end

  test "should update product_specification" do
    patch :update, id: @product_specification, product_specification: { product_id: @product_specification.product_id, spec_text: @product_specification.spec_text, specification_id: @product_specification.specification_id }
    assert_redirected_to product_specification_path(assigns(:product_specification))
  end

  test "should destroy product_specification" do
    assert_difference('ProductSpecification.count', -1) do
      delete :destroy, id: @product_specification
    end

    assert_redirected_to product_specifications_path
  end
end
