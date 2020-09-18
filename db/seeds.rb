# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(name: "User ##{i}")
  Product.create(name: "Product ##{i}", price: 10*i ,status: "Avaliable")
end

Order.create(total_price: 0,status: "preparing",user: User.find(1))
Order.create(total_price: 0,status: "preparing",user: User.find(1))
Order.create(total_price: 0,status: "preparing",user: User.find(2))

ProductOrder.create(order: Order.find(1),product: Product.find(1),p_quantity: 1)
ProductOrder.create(order: Order.find(1),product: Product.find(1),p_quantity: 3)
ProductOrder.create(order: Order.find(1),product: Product.find(3),p_quantity: 1)
ProductOrder.create(order: Order.find(2),product: Product.find(1),p_quantity: 1)
ProductOrder.create(order: Order.find(2),product: Product.find(2),p_quantity: -1)
ProductOrder.create(order: Order.find(1),product: Product.find(5),p_quantity: 1)
ProductOrder.create(order: Order.find(3),product: Product.find(4),p_quantity: 10)