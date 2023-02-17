require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
30.times do |n|
  email = Faker::Internet.email 
  password = "12345#{n}"
  phone_number =  Faker::PhoneNumber.cell_phone_with_country_code
  first_name = Faker::Name.first_name
  last_name = Faker::Name.first_name
  User.create(email: email, password:password, password_confirmation: password, phone_number: phone_number, first_name: first_name, last_name: last_name)
end
30.times do |n|
  email = Faker::Internet.email 
  password = "12345#{n}"
  phone_number =  Faker::PhoneNumber.cell_phone_with_country_code
  first_name = Faker::Name.first_name
  last_name = Faker::Name.first_name
  Doctor.create(email: email, password:password, password_confirmation: password, phone_number: phone_number, first_name: first_name, last_name: last_name)
end

categories_titles = ['Family physicians', 'Psychiatrists', 'Anesthesiologists']
categories_titles.each do |title|
  Category.create(title: title)
end

Doctor.all.each { |doctor| doctor.categories << Category.all.to_a.sample }