# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |i|
  Customer.create(name: "Customer ##{i+1}")
  Supplier.create(name: "Supplier ##{i+1}")
end

Product.create(name: "Product 1",price: 20.0,raw_price: 10.0,supplier: Supplier.find(2))
Product.create(name: "Product 2",price: 30.0,raw_price: 10.0,supplier: Supplier.find(2))
Product.create(name: "Product 3",price: 40.0,raw_price: 10.0,supplier: Supplier.find(4))


o1 = Order.create(total_price: 0,status: "preparing",customer: Customer.find(1))
o2 = Order.create(total_price: 0,status: "preparing",customer: Customer.find(1))
o3 = Order.create(total_price: 0,status: "preparing",customer: Customer.find(3))


o1.orderdetails.create(product: Product.find(1), p_quantity: 1)
o1.orderdetails.create(product: Product.find(3), p_quantity: 3)

o2.orderdetails.create(product: Product.find(3), p_quantity: 3)
o2.orderdetails.create(product: Product.find(3), p_quantity: 3)

o3.orderdetails.create(product: Product.find(1), p_quantity: 3)
o3.orderdetails.create(product: Product.find(2), p_quantity: 3)

o1.save()
o2.save()
o3.save()