class Order < ApplicationRecord
  belongs_to :user 
  has_many :orderdetails
  has_many :products, through: :orderdetails

  validates :status, :total_price, presence: true
end
