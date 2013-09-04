class Product < ActiveRecord::Base
  has_one :product_price
  default_scope order('catalog, brand, model')

  def product_short_name_fullname
    "#{self.catalog} - #{self.short_name} #{self.full_name}"
  end
end
