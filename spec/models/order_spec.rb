require 'rails_helper'

RSpec.describe Order, type: :model do
	it "should sum" do
		order = Order.first
		mysum = order.subtotal - order.discount + order.shipping_cost
    	expect(mysum).to eql(order.total_price)
	end
end
