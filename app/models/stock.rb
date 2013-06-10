class Stock < ActiveRecord::Base
  attr_accessible :info, :last_buy_date, :on_hand, :product_data_id, :product_data_type, :sold_out_date, :title_photo_id
end
