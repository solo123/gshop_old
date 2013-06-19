class StockJournal < ActiveRecord::Base
  attr_accessible :stock_after, :stock_before, :stock_change, :stock_id
  belongs_to :stock
  belongs_to :stock_order, :polymorphic => true
end
