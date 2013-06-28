class Product < ActiveRecord::Base
  attr_accessible :brand, :catalog, :full_name, :godown_amount, :godown_count, :godown_fee, :godown_price, :model, :price, :status
  has_one :product_price
  default_scope order('catalog, brand, model')
end
