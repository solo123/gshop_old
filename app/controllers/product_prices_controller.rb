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
end
