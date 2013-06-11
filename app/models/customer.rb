class Customer < ActiveRecord::Base
  attr_accessible :address, :email, :info, :level, :mobile, :name, :phone, :qq, :reason, :title
end
