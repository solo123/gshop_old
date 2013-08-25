class SalesSheetItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :sales_sheet
  belongs_to :product_data, :polymorphic => true
  belongs_to :serial_product

end
