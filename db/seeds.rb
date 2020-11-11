# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
        # t.string :name
#       t.string :address
#       t.text :description
#       t.integer :price_per_night
#       t.integer :number_of_guests

4.times do 
  Flat.create!(
    name: Faker::Book.genre + ' flat',
    address: Faker::Address.city,
    description: Faker::JapaneseMedia::StudioGhibli.quote,
    price_per_night: Faker::Number.between(from: 40, to: 1000),
    number_of_guests: Faker::Number.between(from: 1, to: 10)
  )
end