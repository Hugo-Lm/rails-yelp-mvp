# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']

puts "Creating 5 perfect restaurants"
5.times do
  restau = Restaurant.create(name: Faker::Beer.brand, address: Faker::Address.city, phone_number: Faker::PhoneNumber.cell_phone, category: CATEGORIES.sample)
end
puts "Restaurants created"
