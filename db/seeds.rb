# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.delete_all
# Product.create(title: 'apple',
#   description:
#     %{<p>
#       <em>apple.
#       </p>},
#   price: 30.00,
#   origin: 'orange',
#   seller: 'steve',
#   min_order: 1)
#
# # . . .
#
# Product.create(title: 'orange',
#   description:
#     %{<p>
#       <em>orange.
#       </p>},
#   price: 40.00,
#   origin: 'melbourne',
#   seller: 'ted',
#   min_order: 1)
#   user_id: 1.
# # . . .
#
# Product.create(title: 'pineapple',
#   description:
#     %{<p>
#       <em>pineapple.
#       </p>},
#   price: 50.00,
#   origin: 'QLD',
#   seller: 'bob',
#   min_order: 1)

  User.delete_all
  Product.delete_all

  u1 = User.create({email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", tos_status: true})
  u2 = User.create({email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", tos_status: true})
  u3 = User.create({email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", tos_status: true})
  u4 = User.create({email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", tos_status: true})

  i1 = Product.create({title: "Rayban Sunglasses", description: "Stylish shades", price: 99.99, origin: "syd", user_id: u2.id, min_order: 1})
  i2 = Product.create({title: "Gucci watch", description: "Expensive timepiece", price: 199.99, origin: "vic", user_id: u2.id, min_order: 1})
  i3 = Product.create({title: "Henri Lloyd Pullover", description: "Classy knitwear", price: 299.99, origin: "qld", user_id: u3.id, min_order: 1})
  i4 = Product.create({title: "Porsche socks", description: "Cosy footwear", price: 399.99, origin: "wa", user_id: u3.id, min_order: 1})
