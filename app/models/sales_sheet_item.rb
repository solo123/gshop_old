class SalesSheetItem < ActiveRecord::Base
  attr_accessible :amount, :price, :product_data_id, :product_data_type, :quantity, :sales_sheet_id
  belongs_to :sales_sheet
  belongs_to :product_data, :polymorphic => true

end
