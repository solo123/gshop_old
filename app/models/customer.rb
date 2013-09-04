class Customer < ActiveRecord::Base
#  has_and_belongs_to_many :manufactories
  def customer_phone_name
    "#{self.phone} #{self.name}#{self.title}"
  end
end
