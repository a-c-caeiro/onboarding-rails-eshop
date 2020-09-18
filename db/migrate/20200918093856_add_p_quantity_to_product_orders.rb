class AddPQuantityToProductOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :product_orders, :p_quantity, :integer
  end
end
