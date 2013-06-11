class Stock < ActiveRecord::Base
  attr_accessible :info, :last_buy_date, :on_hand, :product_data_id, :product_data_type, :sold_out_date, :title_photo_id
  belongs_to :warehouse 
  belongs_to :product_data, :polymorphic => true
  has_many :stock_journals
  has_many :serial_products
  def add_serials
    cnt = 0
    if on_hand > 0 && product_data && self.serial_products.count < on_hand
      product_data.serial_products.where(:stock_id => nil).each do |sp|
        break if self.serial_products.count >= on_hand
        sp.stock = self
        sp.save
        cnt += 1
      end
    end
    cnt
  end
end
