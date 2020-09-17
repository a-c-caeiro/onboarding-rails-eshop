class Product < ApplicationRecord
	has_many :orders, through: product_orders
end
