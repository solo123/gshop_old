class StockJournal < ActiveRecord::Base
  attr_accessible :stock_after, :stock_before, :stock_godown, :stock_id
  belongs_to :stock
end
