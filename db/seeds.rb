# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
30.times do |n|
  email = "user-#{n+1}@gmail.com"
  password = "12345#{n}"
  phone_number = "+38050123122#{n}"
  User.create(email: email, password:password, password_confirmation: password, phone_number: phone_number)
end
30.times do |n|
  email = "doctor-#{n+1}@gmail.com"
  password = "12345#{n}"
  Doctor.create(email: email, password:password, password_confirmation: password)
end

categories_titles = ['Family physicians', 'Psychiatrists', 'Anesthesiologists']
categories_titles.each do |title|
  Category.create(title: title)
end

Doctor.all.each { |doctor| doctor.categories << Category.all.to_a.sample }