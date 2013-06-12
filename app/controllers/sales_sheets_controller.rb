class SalesSheetsController < ResourcesController
  def calculate
    load_object
    @object.sales_sheet_items.each do |item|
      unless item.serial_number.blank?
        sp = SerialProduct.find_by_serial_number(item.serial_number)
        if sp && sp.stock && sp.stock.warehouse_id == @object.warehouse_id
          item.serial_product = sp
          item.serial_number = nil
        end
      end
      if item.serial_product
        item.product_data = item.serial_product.stock.product_data
        item.quantity = 1
      end
      if item.product_data
        if item.product_data.price > 0
          item.price = item.product_data.price
          item.description = item.product_data.full_name
        end
        item.amount = item.quantity * item.price
        item.save
      end
    end
    @object.total_items = @object.sales_sheet_items.sum(:quantity)
    @object.total_amount = @object.sales_sheet_items.sum(:amount)
    @object.actual_amount = @object.total_amount + @object.additional_fee - @object.discount
    @object.save
    redirect_to @object
  end
  def print
    load_object
    render 'print', :layout => 'print_layout'
  end
end
