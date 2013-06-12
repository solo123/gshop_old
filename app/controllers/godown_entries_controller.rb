class GodownEntriesController < ResourcesController
  def calculate
    load_object
    if @object.status == 0
      @object.total_quantity = @object.godown_items.sum(:quantity)
      @object.save
    end
    redirect_to @object
  end
  def entering
    load_object

    if @object.status == 0
      @object.total_quantity = @object.godown_items.sum(:quantity)
      @object.save

      if @object.total_quantity > 0
        @object.godown_items.each do |item|
          if item.status == 0 && item.quantity > 0
            item.status = 1           
            stock = @object.to_warehouse.find_product(item.product_data)
            unless stock
              stock = @object.to_warehouse.stocks.build
              stock.product_data = item.product_data
            end
            journal = stock.stock_journals.build
            journal.stock_before = stock.on_hand
            journal.stock_godown = item.quantity
            journal.stock_after = stock.on_hand = journal.stock_before + journal.stock_godown
            stock.save
            item.save
          end
        end
        @object.status = 1
        @object.save
      end
    else
      flash[:error] = 'Cannot re-godown!'
    end
    redirect_to @object
  end
end
