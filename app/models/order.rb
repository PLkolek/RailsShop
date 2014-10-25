class Order < ActiveRecord::Base
  has_many :order_lines
  validates :order_lines, :presence => true
  validates :customer, :presence => true
end
