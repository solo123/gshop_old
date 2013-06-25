class StockTaking < ActiveRecord::Base
  attr_accessible :info, :status, :warehouse_id
  belongs_to :warehouse
  has_many :stock_taking_items
end
