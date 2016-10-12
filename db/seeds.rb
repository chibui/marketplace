# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.delete_all
Product.create(title: 'apple',
  description:
    %{<p>
      <em>apple.
      </p>},
  price: 30.00,
  origin: 'orange')
# . . .

Product.create(title: 'orange',
  description:
    %{<p>
      <em>orange.
      </p>},
  price: 40.00,
  origin: 'melbourne')
# . . .

Product.create(title: 'pineapple',
  description:
    %{<p>
      <em>pineapple.
      </p>},
  price: 50.00,
  origin: 'QLD')
