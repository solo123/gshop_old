class SalesSheet < ActiveRecord::Base
  has_many :sales_sheet_items
  belongs_to :customer
  belongs_to :warehouse

  default_scope order('created_at desc')
end
