class Product < ActiveRecord::Base
  validates :price, :numericality => {greater_than: 0}, :presence => true
  validates :name, :presence => true
end
