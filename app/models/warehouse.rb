class Warehouse < ActiveRecord::Base
  attr_accessible :name, :pre_code, :status
  has_many :stocks
  def find_product(product)
    stocks.where(:product_data_type => product.class.name).where(:product_data_id => product.id).first
  end
end
