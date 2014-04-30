class SalesSheet < ActiveRecord::Base
  has_many :sales_sheet_items
  belongs_to :customer
  belongs_to :warehouse
  belongs_to :operator, :class_name => 'Employee', :foreign_key => 'operator_id'

  default_scope {order('created_at desc')}
end
