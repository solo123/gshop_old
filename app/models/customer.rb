class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :info, :level, :mobile, :name, :phone, :qq, :reason, :title
  has_and_belongs_to_many :manufactories
end
