class StockTakingItem < ActiveRecord::Base
  attr_accessible :product_data_id, :product_data_type, :quantity, :status, :stock_taking_id
  belongs_to :stock_taking
  belongs_to :product_data, :polymorphic => true
end
