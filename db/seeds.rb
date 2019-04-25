# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


City.destroy_all
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all
JoinSpecialtyDoctor.destroy_all



15.times do |index|
  City.create(city_name: Faker::Address.city)
end

15.times do |index|
  Patient.create(
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
	  )
end

15.times do |index|
  Doctor.create(
    last_name: Faker::Name.last_name,
    first_name: Faker::Name.first_name,
    zip_code: Faker::Address.zip_code,
  )
end

15.times do |index|
  Specialty.create(
    name: ["Ophtalmo", "Urgences", "MPR"].sample
  )
end

15.times do |index|
  JoinSpecialtyDoctor.create(
    doctor_id: rand(Doctor.first.id..Doctor.last.id),
    specialty_id: rand(Specialty.first.id..Specialty.last.id)
  )
end

30.times do |index|
  Appointment.create(
    date: Faker::Date.forward(45),
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    city: City.all.sample
  )
end