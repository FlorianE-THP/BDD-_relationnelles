# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

100.times do 
    Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

arr_specialty = ["Hospice and palliative medicine", "Sports medicine", "Military psychiatry", "Urologic oncology", "Adolescent medicine", "Gastroenterology", "Medical toxicology"]

zip = Faker::Number.decimal_part(digits: 5)

20.times do 
    Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: arr_specialty.sample, zip_code: "#{zip}")
end





200.times do
    doctor_id = Doctor.find(rand(1..20)) 
    patient_id = Patient.find(rand(1..20))
    Appointment.create!(doctor: doctor_id, patient: patient_id, date: ) 
end

