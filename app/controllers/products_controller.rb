class ProductsController < NestedResourcesController
  def select
    load_collection
  end
  def search
    render 'search', :layout => nil
  end
	private
		def product_params
			params.require(:product).permit(:brand, :catalog, :full_name, :godown_amount, :godown_count, :godown_fee, :godown_price, :model, :price, :status)
		end
end
