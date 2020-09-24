class Change < ActiveRecord::Migration[6.0]
  def change
  	change_table :users do |t|
	  t.string :icon_link
	  t.decimal :rating, default: 5.0 , null: false
	  t.string :type	  	
	end

	remove_reference :orders, :user, index: true, foreign_key: true

	change_table :orders do |t| 	
		t.references :customer, null: false, foreign_key: false
		t.decimal :subtotal , default: 0.0, null: false
		t.decimal :shipping_cost ,default: 0.0, null: false
		t.decimal :discount ,default: 0.0, null: false
	end

	change_table :orderdetails do |t| 	
		t.decimal :discount, default: 0.0
	end

	change_table :products do |t| 	
		t.remove :status
		t.references :supplier, null: false, foreign_key: false
		t.decimal :raw_price, default: 0.0, null: false
		t.string :icon_link
	end

	add_foreign_key :orders, :users, column: :customer_id
	add_foreign_key :products, :users, column: :supplier_id

  end
end
