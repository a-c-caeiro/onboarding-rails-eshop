class Order < ApplicationRecord
  belongs_to :customer 
  
  has_many :orderdetails, dependent: :destroy
  has_many :products, through: :orderdetails

  validates :status, :total_price, presence: true
end
