class Accessory < ActiveRecord::Base
  attr_accessible :short_code, :brand, :catalog, :info, :name, :price, :product_id
  belongs_to :product
  def full_name
    "#{brand} #{name}"
  end
end
