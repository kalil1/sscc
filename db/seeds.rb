# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
    Product.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.paragraph,
      weight: Faker::Number.decimal(l_digits: 2),
      length: Faker::Number.decimal(l_digits: 2),
      width: Faker::Number.decimal(l_digits: 2),
      height: Faker::Number.decimal(l_digits: 2)
    )
  end