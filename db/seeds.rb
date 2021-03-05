require "faker"
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
User.destroy_all
Booking.destroy_all
Artwork.destroy_all
# Added user as Sevil
sevil = User.create(username: 'Lilium', address: 'se18py', email: 'sevilhatipogluu93@gmail.com', password: 'asdasd')

# Added 10 users
10.times do
  user = User.new( username: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "password")
  user.save!
end
puts "created #{User.count} new users"

first_artwork = Artwork.new(name: "Mona Lisa", description: "A half-length portrait painting by Italian artist Leonardo da Vinci.
Considered an archetypal masterpiece of the Italian Renaissance, it has been described as 'the best known, the most visited,
the most written about, the most sung about, the most parodied work of art in the world'.
The painting's novel qualities include the subject's enigmatic expression, the monumentality of the composition,
the subtle modelling of forms, and the atmospheric illusionism.", rate: 11235, category: "painting", address: "12 Privet Drive, London")
file = URI.open('https://cdn.britannica.com/24/189624-050-F3C5BAA9/Mona-Lisa-oil-wood-panel-Leonardo-da.jpg')
first_artwork.photos.attach(io: file, filename: 'temp.jpg', content_type: 'image.jpg')
first_artwork.user = User.all.sample
first_artwork.save!




10.times do
  category = %w[painting drawing sculpture graphic_design seramic photography]
  file = URI.open('https://source.unsplash.com/random')
  artwork = Artwork.new(name: Faker::Name.name, category: "painting", rate: rand(20..500), address: "2D Mitre Road, London")
  artwork.user = User.all.sample
  artwork.photos.attach(io: file , filename: 'random.png', content_type: 'image.png')
  artwork.save!
end


# 10.times do
#   category = %w[painting drawing sculpture graphic_design seramic photography]
#   file = URI.open('https://source.unsplash.com/random')
#   artwork = Artwork.new(name: Faker::Name.name, category: "painting", rate: rand(20..500), address: "2D Mitre Road, London")
#   artwork.user = User.all.sample
#   artwork.photos.attach(io: file , filename: 'random.png', content_type: 'image.png')
#   artwork.save!
# end
puts "created #{Artwork.count} new artworks"


# Added 10 bookings for user Sevil
10.times do
  Booking.create(artwork: Artwork.all.sample, user: sevil, start_date: Date.today, end_date: Date.today + 4)
end

