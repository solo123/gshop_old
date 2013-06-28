require 'test_helper'

class ProductPricesControllerTest < ActionController::TestCase
  setup do
    @product_price = product_prices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_prices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_price" do
    assert_difference('ProductPrice.count') do
      post :create, product_price: { godown_amount: @product_price.godown_amount, godown_count: @product_price.godown_count, godown_fee: @product_price.godown_fee, godown_price: @product_price.godown_price, price: @product_price.price, product_id: @product_price.product_id, status: @product_price.status }
    end

    assert_redirected_to product_price_path(assigns(:product_price))
  end

  test "should show product_price" do
    get :show, id: @product_price
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_price
    assert_response :success
  end

  test "should update product_price" do
    put :update, id: @product_price, product_price: { godown_amount: @product_price.godown_amount, godown_count: @product_price.godown_count, godown_fee: @product_price.godown_fee, godown_price: @product_price.godown_price, price: @product_price.price, product_id: @product_price.product_id, status: @product_price.status }
    assert_redirected_to product_price_path(assigns(:product_price))
  end

  test "should destroy product_price" do
    assert_difference('ProductPrice.count', -1) do
      delete :destroy, id: @product_price
    end

    assert_redirected_to product_prices_path
  end
end
