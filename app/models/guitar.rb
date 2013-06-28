class Guitar < ActiveRecord::Base
  attr_accessible :short_code, :info, :model, :guitar_type, :brand, :price, :title_photo_id, :photos, :product_id
  belongs_to :product
  has_many :photos, :as => :photo_data, :dependent => :destroy

  has_many :godown_items, :as => :product_data
  has_many :stocks, :as => :product_data
  has_many :serial_products, :as => :product_data
  default_scope order('guitar_type, short_code')
  def full_name
    "#{brand} #{model}"
  end
end
