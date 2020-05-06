# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'table_print'

#Reset data into database
City.destroy_all
User.destroy_all
Accommodation.destroy_all
Reservation.destroy_all

#Generate 20 users into database 
50.times do |user|
	tp user_1 = User.create!(email:Faker::Internet.email,
		phone_number:0652595821,
		decription:Faker::Quotes::Chiquito.expression)
	puts "user #{user}/50 successfully created"
end

#Generate 10 cities into database
10.times do |city|
	tp city_1 = City.create!(name:Faker::Address.city,
		zip_code:Faker::Address.zip_code)
	puts "city #{city}/10 successfully created"
end

#Generate 50 accommodations into database
50.times do |listing|
	tp accommodation_1 = Accommodation.create!(user:user_1,
		city:city_1,
		available_beds:%w[1 2 3 4].sample,
		price:%w[24 37 56 89].sample,
		description:Faker::Quotes::Chiquito.expression *140,
		has_wifi:%w[true false].sample,
		welcome_message:'Bienvenue Bienvenida Welcome Dalalakkdiam AxlanWassalaa')
	puts "accommodation #{listing}/50 successfully created"

	#for each accommodation we  create 5 reservations in the past
	5.times do |past_reservation|
		tp reservation_p = Reservation.create!(user:user_1,
			accommodation:accommodation_1,
			start_date:Faker::Date.backward(days: 8),
			end_date:Faker::Date.backward(days: 14))
		puts "reservation #{past_reservation}/5 successfully created"
	end

	#for each accomodation we create 5 reservations in the future
	5.times do |future_reservation|
		tp reservation_f = Reservation.create!(user:user_1,
			accommodation:accommodation_1,
			start_date:Faker::Date.forward(days: 6),
			end_date:Faker::Date.forward(days: 14))
		puts "reservation #{future_reservation}/5 successfully created"
	end
end

