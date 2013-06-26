class StocksController < NestedResourcesController
  def load_collection
    load_parent
    @collection = @parent.stocks.where('on_hand != 0')
  end
end
