class SalesSheetItem < ActiveRecord::Base
  attr_accessible :serial_product_id, :serial_number, :amount, :price, :product_data_id, :product_data_type, :quantity, :sales_sheet_id, :description, :product_id
  belongs_to :product
  belongs_to :sales_sheet
  belongs_to :product_data, :polymorphic => true
  belongs_to :serial_product

end
