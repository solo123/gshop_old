class ProductPricesController < NestedResourcesController
  def catalog
    redirect_to :action => :index
  end
      def load_collection
        @catalogs = Product.select('catalog, count(*) as count').group(:catalog)
        catalog = params[:cat]
        catalog ||= 'guitar'
        pages = 20
        @collection = Product.where('catalog like ?', "#{catalog}%").order('catalog, full_name').limit(500)
      end 
	private
		def product_price_params
			params.require(:product_price).permit(:godown_amount, :godown_count, :godown_fee, :godown_price, :price, :product_id, :status)
    end
end
