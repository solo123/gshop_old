class GodownItem < ActiveRecord::Base
  attr_accessible :godown_entry_id, :product_data_id, :product_data_type, :quantity, :status
  belongs_to :godown_entry
  belongs_to :product_data, :polymorphic => true
end
