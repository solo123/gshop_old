class StockTakingsController < ResourcesController
  def get_stock
    load_object
    @object.warehouse.stocks.where('on_hand != 0').each do |stock|
      item = @object.stock_taking_items.where(:product_data_type =>stock.product_data.class.name, :product_data_id => stock.product_data.id).first
      unless item
        item = @object.stock_taking_items.build
        item.product_data = stock.product_data
      end
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
  def entering
    load_object
    @object.stock_taking_items.where(:status => 0).each do |item|
      if item.on_hand != item.quantity && item.product_data
        stock = @object.warehouse.stocks.where(:product_data_type => item.product_data.class.name, :product_data_id => item.product_data.id).first
        unless stock
          stock = @object.warehouse.stocks.build
          stock.product_data = item.product_data
          stock.on_hand = 0
        end
        journal = stock.stock_journals.build
        journal.stock_before = stock.on_hand
        journal.stock_change = item.on_hand - item.quantity
        journal.stock_after = stock.on_hand = item.quantity
        journal.stock_order = item
        stock.save
        journal.save
      end
      item.status = 1
      item.save
    end
    @object.status = 1
    @object.save
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
	private
		def stock_taking_params
			params.require(:stock_taking).permit(:info, :status, :warehouse_id)
    end
end
