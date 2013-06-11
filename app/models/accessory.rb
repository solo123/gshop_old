class Accessory < ActiveRecord::Base
  attr_accessible :short_code, :brand, :catalog, :info, :name, :price
  def full_name
    "#{brand} #{name}"
  end
end
