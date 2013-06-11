class SalesSheetsController < ResourcesController
  def calculate
    load_object
    @object.sales_sheet_items.each do |item|
      item.price = item.product_data.price if item.product_data
      item.amount = item.quantity * item.price
      item.save
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
