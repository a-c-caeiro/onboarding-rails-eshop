class DropOrderProducts < ActiveRecord::Migration[6.0]
  def change
  	drop_table :orders_products
  end
end
