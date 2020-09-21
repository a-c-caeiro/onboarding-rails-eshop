# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(name: "User ##{i+1}")
  Product.create(name: "Product ##{i+1}", price: 10*(i+1) ,status: "Avaliable")
end

o1 = Order.create(total_price: 0,status: "preparing",user: User.find(1))
o2 = Order.create(total_price: 0,status: "preparing",user: User.find(1))
o3 = Order.create(total_price: 0,status: "preparing",user: User.find(2))


o1.orderdetails.create(product: Product.find(1), p_quantity: 1)
o1.orderdetails.create(product: Product.find(1), p_quantity: 3)
o1.orderdetails.create(product: Product.find(3), p_quantity: 1)
o2.orderdetails.create(product: Product.find(1), p_quantity: 1)
o2.orderdetails.create(product: Product.find(2), p_quantity: -1)
o1.orderdetails.create(product: Product.find(5), p_quantity: 1)
o3.orderdetails.create(product: Product.find(4), p_quantity: 10)

o1.save()
o2.save()
o3.save()