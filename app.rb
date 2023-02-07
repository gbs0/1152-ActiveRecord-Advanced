require_relative 'config/application'
require 'date'

house = Doctor.new(first_name: "Gregory", last_name: "House", age: 46, specialty: "General Clinic")
puts "Can save doctor in DB? "
p house.valid?
p house.errors.messages
# house.save

intern = Intern.new(first_name: "Raquel", last_name: "Fonseca", age: 30, specialty: "Pediatric")
puts "Can save Intern in DB? "
p intern.valid?
p intern.errors.messages
intern.doctor = house
# intern.doctor_id = house.id
# intern.save

patient = Patient.new(first_name: "Guilherme", last_name: "Mello", age: 30)
patient_two = Patient.new(first_name: "Lenilda", last_name: "Miranda", age: 30)
patient.save
patient_two.save

consulta = Consultation.new(date: Date.today, patient: patient, doctor: Doctor.find(1))
consulta2 = Consultation.new(date: Date.today, patient: patient_two, doctor: Doctor.find(1))
consulta.save
consulta2.save
