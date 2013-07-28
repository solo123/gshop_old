class StocksController < NestedResourcesController
  def load_collection
    load_parent
    @collection = @parent.stocks.where('on_hand != 0').select('stocks.*, products.full_name, products.catalog').joins(:product).order('catalog, full_name')
  end
end
