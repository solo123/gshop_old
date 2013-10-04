class Product < ActiveRecord::Base
  has_one :product_price
  default_scope { order 'catalog, brand, model' }
  scope :search_by_name, -> (q) { where(['full_name like ? or catalog like ?', "%#{q}%"]) }

  def product_short_name_fullname
    "#{self.catalog} - #{self.short_name} #{self.full_name}"
  end
end
