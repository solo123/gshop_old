class GodownItem < ActiveRecord::Base
  attr_accessible :cost, :godown_entry_id, :product_data_id, :product_data_type, :quantity, :status, :product_id
  belongs_to :godown_entry
  belongs_to :product_data, :polymorphic => true
  belongs_to :product
end
