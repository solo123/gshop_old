class GodownEntry < ActiveRecord::Base
  attr_accessible :from_warehouse_id, :godown_date, :info, :manufactory_id, :operator, :to_warehouse_id, :total_quantity
  has_many :godown_items, :dependent => :destroy
end
