class AddIndexToOrderProducts < ActiveRecord::Migration[6.0]
  def change	
	change_table :orders_products do |t|
	  t.index :product_id
	  t.index :order_id
	end
  end
end
