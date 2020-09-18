class OrderProduct < ApplicationRecord
  self.table_name = 'orders_products'
  
  belongs_to :order, foreign_key: :order_id
  belongs_to :product, foreign_key: :product_id
  validates :p_quantity, presence: true , numericality: { only_integer: true, greater_than: 0 }
end
