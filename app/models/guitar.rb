class Guitar < ActiveRecord::Base
  attr_accessible :info, :model, :guitar_type, :brand, :price, :title_photo_id, :photos
  has_many :photos, :as => :photo_data, :dependent => :destroy

end
