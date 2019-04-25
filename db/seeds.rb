# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |index|
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Job.title, zip_code: Faker::Code.npi)
end

10.times do |index|
  patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::FunnyName.two_word_name)
end

10.times do |index|
  appointment = Appointment.create!(date: Faker::Date.forward(45), patient: Patient.all.sample, doctor: Doctor.all.sample)
end