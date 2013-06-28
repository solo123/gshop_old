class ProductPrice < ActiveRecord::Base
  attr_accessible :godown_amount, :godown_count, :godown_fee, :godown_price, :price, :product_id, :status
end
