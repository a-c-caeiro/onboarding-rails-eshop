class Order < ApplicationRecord
  belongs_to :user 
  has_many :orders_products
  has_many :products, through: :orders_products
  validates :status, :total_price, presence: true
end
