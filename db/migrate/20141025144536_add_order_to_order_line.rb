class AddOrderToOrderLine < ActiveRecord::Migration
  def change
    add_reference :order_lines, :order, index: true
  end
end
