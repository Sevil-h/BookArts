require "faker"
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Booking.destroy_all
Artwork.destroy_all
# Added user as Sevil
sevil = User.create(username: 'Lilium', address: 'se18py', email: 'sevilhatipogluu93@gmail.com', password: 'asdasd')

# Added 10 users
10.times do
  user = User.new( username: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "password")
  # user.username = Faker::Name.name
  # user.address = Faker::Address.full_address
  # user.email = Faker::Internet.email

  user.save!
end
puts "created #{User.count} new users"

# Added 10 artworks
10.times do
  category = %w[painting drawing sculpture graphic_design seramic photography]
  file = URI.open('https://source.unsplash.com/random')
  artwork = Artwork.new(name: Faker::Name.name, category: "painting", rate: rand(20..500), address: "2D Mitre Road, London")
  artwork.user = User.all.sample
  artwork.photos.attach(io: file , filename: 'random.png', content_type: 'image.png')
  artwork.save!
end

# Added 10 bookings for user Sevil
10.times do
  Booking.create(artwork: Artwork.all.sample, user: sevil, start_date: Date.today, end_date: Date.today + 4)
end

puts "created #{Artwork.count} new artworks"
