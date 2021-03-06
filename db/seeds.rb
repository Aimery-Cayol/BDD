# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
    fake = Doctor.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        zip_code: Faker::Address.zip_code,
        city_name: Faker::Address.city
        )
    end 


20.times do
        fake = Patient.create!(
            first_name: Faker::Name.first_name, 
            last_name: Faker::Name.last_name,
            city_name: Faker::Address.city
            )
end 
    
10.times do 
    appt = Appointment.create!(
        patient: Patient.all.sample, 
        doctor: Doctor.all.sample
    )
end 