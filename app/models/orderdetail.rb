class Orderdetail < ApplicationRecord
  belongs_to :order
  belongs_to :product
  validates :p_quantity, presence: true , numericality: { only_integer: true, greater_than: 0 }

end