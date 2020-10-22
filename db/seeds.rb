# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
    fake = Dog.create!(
        name: Faker::Creature::Dog.name,
        race: Faker::Creature::Dog.breed
        )
end 

10.times do
    fake = Dogsitter.create!(
        name: Faker::Name.first_name, 
        )
end 

10.times do
    fake = City.create!(
        city_name: Faker::Address.city, 
        )
 end 

10.times do
    fake = Stroll.create!(
        dog: Dog.all.sample,
        dogsitter: Dogsitter.all.sample
            )
end 