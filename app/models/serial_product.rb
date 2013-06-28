class SerialProduct < ActiveRecord::Base
  attr_accessible :product_data_id, :product_data_type, :product_model, 
    :product_name, :production_batch_id, :serial_number, 
    :title_photo_id, :photos, :product_id

  has_many :photos, :as => :photo_data, :dependent => :destroy

  belongs_to :product_data, :polymorphic => true  
  belongs_to :product
  belongs_to :stock
end
