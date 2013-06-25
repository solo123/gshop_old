class StockTakingsController < ResourcesController
  def get_stock
    load_object
    @object.warehouse.stocks.where('on_hand > 0').each do |stock|
      item = @object.stock_taking_items.build
      item.product_data = stock.product_data
      item.full_name = item.product_data.full_name
      if item.product_data_type == 'Guitar'
        item.catalog = item.product_data.guitar_type
      else
        item.catalog = item.product_data.catalog
      end
      item.on_hand = stock.on_hand
      item.save
    end
    redirect_to @object 
  end
  def save_quantity
    load_object
    params[:items].each do |item|
      sti = StockTakingItem.find(item[0])
      sti.quantity = item[1].to_i
      sti.save
    end

    redirect_to @object
  end
end
