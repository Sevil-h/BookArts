require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  user = User.new( username: Faker::Name.name, address: Faker::Address.full_address, email: Faker::Internet.email, password: "password")
  # user.username = Faker::Name.name
  # user.address = Faker::Address.full_address
  # user.email = Faker::Internet.email

  user.save!
end
puts "created #{User.count} new users"

10.times do
  category = %w[painting drawing sculpture graphic_design seramic photography]
  artwork = Artwork.new(name: Faker::Name.name, category: category.sample, photo: 'https://picsum.photos/200', rate: rand(20..500))
  artwork.user = User.all.sample
  artwork.save!
end

puts "created #{Artwork.count} new artworks"
