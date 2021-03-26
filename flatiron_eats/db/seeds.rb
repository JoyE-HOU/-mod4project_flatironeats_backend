# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'pry'

# i = 0 
# users = []
# while i < 5 do 
#     users.push(Faker::Name.unique.name)
#     i++
# end

Like.destroy_all
Review.destroy_all
User.destroy_all
Restaurant.destroy_all


cities = []
5.times {cities.push(Faker::Address.city)}

5.times { User.create(name: Faker::Name.unique.name, email: Faker::Internet.email, city: cities.sample(1)[0])}

20.times {Restaurant.create(name: Faker::Company.name, location: cities.sample(1)[0], website: Faker::Internet.domain_name)}

Like.create(user_id: User.all.first.id, restaurant_id: Restaurant.all.first.id)

Review.create(user_id: User.all.first.id, restaurant_id: Restaurant.all.first.id, content: Faker::Hipster.sentence, rating: 3)