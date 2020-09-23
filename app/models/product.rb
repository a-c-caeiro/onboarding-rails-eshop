class Product < ApplicationRecord
	belongs_to :supplier
	has_many :orderdetails
	has_many :orders, through: :orderdetails

	validates :raw_price, :price, :name, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0 }
	validates :raw_price, numericality: { greater_than_or_equal_to: 0 }
end
