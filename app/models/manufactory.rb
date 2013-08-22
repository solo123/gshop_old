class Manufactory < ActiveRecord::Base
  attr_accessible :address, :bank_account, :contact, :email, :name, :phone, :rating, :website
  has_and_belongs_to_many :customers
end
