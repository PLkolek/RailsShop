class OrderLine < ActiveRecord::Base
  belongs_to :order
  belongs_to :product

  validates :order, :presence => true
  validates :product, :presence => true
  validates :quantity, :numericality => {greater_than: 0, :only_integer => true}, :presence => true

  def total
    quantity*product.price
  end
end
