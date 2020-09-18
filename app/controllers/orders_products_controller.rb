class OrdersProductsController < ApplicationController
  def index
    @order_products = OrderProduct.all
  end
end
