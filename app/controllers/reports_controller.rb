class ReportsController < ApplicationController
  def sales_summary
    @year = params[:year].to_i
    @month = params[:month].to_i

    @year = Date.today.year unless @year && @year > 0
    @month = Date.today.month unless @month && @month > 0

    d1 = DateTime.new(@year, @month, 1)
    d2 = d1 + 1.month
    @collection = SalesSheetItem.select('product_id, sum(quantity) as quantity, sum(actual_amount) as actual_amount').where(sales_sheet_id: SalesSheet.where("created_at > ? and created_at < ?", d1, d2)).group(:product_id).includes(:product)
  end
end

