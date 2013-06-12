class SalesSheet < ActiveRecord::Base
  attr_accessible :actual_amount, :additional_fee, :customer_id, :discount, :operator_id, :status, :total_amount, :total_items, :warehouse_id, :info
  has_many :sales_sheet_items
  belongs_to :customer
  belongs_to :warehouse
end
