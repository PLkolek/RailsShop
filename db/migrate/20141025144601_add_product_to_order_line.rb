class AddProductToOrderLine < ActiveRecord::Migration
  def change
    add_reference :order_lines, :product, index: true
  end
end
