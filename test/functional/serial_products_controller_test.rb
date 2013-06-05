require 'test_helper'

class SerialProductsControllerTest < ActionController::TestCase
  setup do
    @serial_product = serial_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:serial_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create serial_product" do
    assert_difference('SerialProduct.count') do
      post :create, serial_product: { product_data_id: @serial_product.product_data_id, product_data_type: @serial_product.product_data_type, product_model: @serial_product.product_model, product_name: @serial_product.product_name, production_batch_id: @serial_product.production_batch_id, serial_number: @serial_product.serial_number, title_photo_id: @serial_product.title_photo_id }
    end

    assert_redirected_to serial_product_path(assigns(:serial_product))
  end

  test "should show serial_product" do
    get :show, id: @serial_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @serial_product
    assert_response :success
  end

  test "should update serial_product" do
    put :update, id: @serial_product, serial_product: { product_data_id: @serial_product.product_data_id, product_data_type: @serial_product.product_data_type, product_model: @serial_product.product_model, product_name: @serial_product.product_name, production_batch_id: @serial_product.production_batch_id, serial_number: @serial_product.serial_number, title_photo_id: @serial_product.title_photo_id }
    assert_redirected_to serial_product_path(assigns(:serial_product))
  end

  test "should destroy serial_product" do
    assert_difference('SerialProduct.count', -1) do
      delete :destroy, id: @serial_product
    end

    assert_redirected_to serial_products_path
  end
end
