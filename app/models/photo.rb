class Photo < ActiveRecord::Base
  attr_accessible :photo_data_id, :photo_data_type, :pic
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :photo_data, :polymorphic => true
end
