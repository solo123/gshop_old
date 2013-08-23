class Product < ActiveRecord::Base
  has_one :product_price
  default_scope order('catalog, brand, model')
end
