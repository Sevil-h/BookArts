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

# 10.times do
#   category = %w[painting drawing sculpture graphic_design seramic photography]
#   file = URI.open('https://source.unsplash.com/random')
#   artwork = Artwork.new(name: Faker::Name.name, category: category.sample, rate: rand(20..500))
#   artwork.user = User.all.sample
#   artwork.photos.attach(io: file , filename: 'random.png', content_type: 'image.png')
#   artwork.save!
# end
first_artwork = Artwork.new(name: "Mona Lisa", description: "A half-length portrait painting by Italian artist Leonardo da Vinci. 
Considered an archetypal masterpiece of the Italian Renaissance, it has been described as 'the best known, the most visited, 
the most written about, the most sung about, the most parodied work of art in the world'. 
The painting's novel qualities include the subject's enigmatic expression, the monumentality of the composition, 
the subtle modelling of forms, and the atmospheric illusionism.", rate: 11235, category: "painting")
first_artwork.user = User.all.sample

second_artwork = Artwork.new(name: "The Last Supper", description: "The Last Supper is a late 15th-century mural painting by Italian artist Leonardo da Vinci housed by the refectory of the Convent of Santa Maria delle Grazie in Milan, Italy. 
It is one of the Western world's most recognizable paintings. 
The work is assumed to have been started around 1495–96 and was commissioned as part of a plan of renovations to the church and its convent buildings by Leonardo's patron Ludovico Sforza, 
Duke of Milan. The painting represents the scene of the Last Supper of Jesus with his apostles, as it is told in the Gospel of John, 13:21. 
Leonardo has depicted the consternation that occurred among the Twelve Apostles when Jesus announced that one of them would betray him.", rate: 81321, category: "painting")
second_artwork.user = User.all.sample

third_artwork = Artwork.new(name: "The Starry Night", description: "An oil on canvas painting by Dutch Post-Impressionist painter Vincent van Gogh. 
Painted in June 1889, it depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, 
just before sunrise, with the addition of an imaginary village. It has been in the permanent collection of the Museum of Modern Art in New York City since 1941, 
acquired through the Lillie P. Bliss Bequest. Widely regarded as Van Gogh's magnum opus, The Starry Night is one of the most recognized paintings in Western art.", rate: 1135, category: "painting")
third_artwork.user = User.all.sample

fourth_artwork = Artwork.new(name: "The Scream", description: "The Scream is the popular name given to a composition created by Norwegian Expressionist artist Edvard Munch in 1893. 
The original German title given by Munch to his work was Der Schrei der Natur (The Scream of Nature), and the Norwegian title is Skrik (Shriek). 
The agonised face in the painting has become one of the most iconic images of art, seen as symbolising the anxiety of the human condition.", rate: 1776, category: "painting")
fourth_artwork.user = User.all.sample

fifth_artwork = Artwork.new(name: "Guernica", description: "Guernica is a large 1937 oil painting on canvas by Spanish artist Pablo Picasso. 
It is one of his best known works, regarded by many art critics as the most moving and powerful anti-war painting in history. 
It is exhibited in the Museo Reina Sofía in Madrid. 
The grey, black, and white painting portrays the suffering of people and animals wrought by violence and chaos.")
fifth_artwork.user = User.all.sample

sixth_artwork = Artwork.new(name: "The Kiss", description: "The Kiss (in German Der Kuss) is an oil-on-canvas painting with added gold leaf, silver and platinum by the Austrian Symbolist painter Gustav Klimt. 
It was painted at some point in 1907 and 1908, during the height of what scholars call his 'Golden Period'. It was exhibited in 1908 under the title Liebespaar (the lovers) as stated in the catalogue of the exhibition. 
The painting depicts a couple embracing each other, their bodies entwined in elaborate beautiful robes decorated in a style influenced by the contemporary Art Nouveau style and the organic forms of the earlier Arts and Crafts movement. 
The painting now hangs in the Österreichische Galerie Belvedere museum in the Belvedere, Vienna, and is considered a masterpiece of Vienna Secession (local variation of Art Nouveau) and Klimt's most popular work.",
rate: 1092, category: "painting")
sixth_artwork.user = User.all.sample

seventh_artwork = Artwork.new(name: "Girl With a Pearl Earring", description: "Girl with a Pearl Earring (Dutch: Meisje met de parel) is an oil painting by Dutch Golden Age painter Johannes Vermeer, 
dated c. 1665. Going by various names over the centuries, it became known by its present title towards the end of the 20th century after the earring worn by the girl portrayed there. 
The work has been in the collection of the Mauritshuis in The Hague since 1902 and has been the subject of various literary treatments. 
In 2006, the Dutch public selected it as the most beautiful painting in the Netherlands.", rate: 1125, category: "painting")
seventh_artwork.user = User.all.sample

eight_artwork = Artwork.new(name: "The Birth of Venus", description: "The Birth of Venus is a painting by the Italian artist Sandro Botticelli, 
probably made in the mid 1480s. It depicts the goddess Venus arriving at the shore after her birth, when she had emerged from the sea fully-grown (called Venus Anadyomene and often depicted in art). 
The painting is in the Uffizi Gallery in Florence, Italy.", rate: 2021, category: "painting")
eight_artwork.user = User.all.sample

ninth_artwortk = Artwork.new(name: "Las Meninas", description: "Las Meninas, Spanish for 'The Ladies-in-waiting' is a 1656 painting in the Museo del Prado in Madrid, 
by Diego Velázquez, the leading artist of the Spanish Golden Age. Its complex and enigmatic composition raises questions about reality and illusion, 
and creates an uncertain relationship between the viewer and the figures depicted. Because of these complexities, 
Las Meninas has been one of the most widely analyzed works in Western painting.", rate: 1980, category: "painting")
ninth_artwortk.user = User.all.sample

tenth_artwork = Artwork.new(name: "Creation of Adam", description: "The Creation of Adam (Italian: Creazione di Adamo) is a fresco painting by Italian artist Michelangelo, 
which forms part of the Sistine Chapel's ceiling, painted c. 1508–1512. It illustrates the Biblical creation narrative from the Book of Genesis in which God gives life to Adam, 
the first man. The fresco is part of a complex iconographic scheme and is chronologically the fourth in the series of panels depicting episodes from Genesis.", rate: 1984, category: "painting")
tenth_artwork.user = User.all.sample
=======
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
