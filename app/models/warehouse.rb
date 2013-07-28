class Warehouse < ActiveRecord::Base
  attr_accessible :name, :pre_code, :status
  has_many :stocks
end
