class CreateProductOrders < ActiveRecord::Migration[6.0]
  def change
    create_join_table :products, :orders do |t|
	    	#t.index: product_id
	    	#t.index: order_id
      	
      	t.timestamps
    end
  end
end
