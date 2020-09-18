class AddPQuantityToProductOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders_products, :p_quantity, :integer
  end
end
