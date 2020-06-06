# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"
#cabins = Cabin.create([{ title: 'La cabine de Magalie', description: 'Le paradis sur terre', localisation: 'Marseille', price_per_night: 99, beds: 6 }, { title: 'La cabine de Mokhtar', description: 'Un coin au calme', localisation: 'Lille', price_per_night: 79, beds: 4 }, { title: 'La cabine de Vincent', description: 'Le spot idéal', localisation: 'Arcachon', price_per_night: 59, beds: 2 }])
Cabin.destroy_all
User.destroy_all

puts 'Creating Cabins...'

user = User.create!({
  first_name: "le propriétaire",
  email: "test@gmail.com",
  password: "testtest",
})

cabine1 = Cabin.create!({
  title: "La cabane de Magalie",
  localisation: "18 Rue Beautreillis, 75004 Paris, France",
  description: "perchée au sommet",
  price_per_night: 149,
  beds: 6,
  user: user
})
file1 = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cabine1.photos.attach(io: file1, filename: 'nes.png', content_type: 'image/png')

cabine2 = Cabin.create!({
  title: "La cabane de Mokhtar",
  localisation: "15 Rue Sainte, 13006 Marseille, France",
  description: "Couloucoucou stash stash",
  price_per_night: 229,
  beds: 4,
  user: user
})
file2 = URI.open('https://images.unsplash.com/photo-1504643039591-52948e3ddb47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine2.photos.attach(io: file2, filename: 'nes.png', content_type: 'image/png')

cabine3 = Cabin.create!({
  title: "La cabane de Vincent",
  localisation: "15 Rue Berthier, 78000 Versailles, France",
  description: "Pura vida",
  price_per_night: 169,
  beds: 2,
  user: user
})
file3 = URI.open('https://images.unsplash.com/photo-1445233233552-0d1470d31483?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80')
cabine3.photos.attach(io: file3, filename: 'nes.png', content_type: 'image/png')

cabine4 = Cabin.create!({
  title: "Le cabane perchée",
  localisation: "20 Rue Beautreillis, 75004 Paris, France",
  description: "the best spot in town",
  price_per_night: 215,
  beds: 3,
  user: user
})
file4 = URI.open('https://images.unsplash.com/photo-1486163320583-bda0bca0d34c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine4.photos.attach(io: file4, filename: 'nes.png', content_type: 'image/png')

cabine5 = Cabin.create!({
  title: "La cabane flottante",
  localisation: "5 Rue du Terras, 13002 Marseille, France",
  description: " 1,2,3 perché",
  price_per_night: 179,
  beds: 6,
  user: user
})
file5 = URI.open('https://images.unsplash.com/photo-1575924385565-c98a553595e2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine5.photos.attach(io: file5, filename: 'nes.png', content_type: 'image/png')

cabine6 = Cabin.create!({
  title: "La Canopée",
  localisation: "45 Rue de le Paroisse, 78000 Versailles, France",
  description: "vous allez vous régaler",
  price_per_night: 156,
  beds: 3,
  user: user
})
file6 = URI.open('https://images.unsplash.com/photo-1508996229940-4d4af8b9f6dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine6.photos.attach(io: file6, filename: 'nes.png', content_type: 'image/png')

cabine7 = Cabin.create!({
  title: "La hute",
  localisation: "13 Rue du quai, 33000 Bordeaux, France",
  description: "jamais vous ne l'oublierez",
  price_per_night: 689,
  beds: 10,
  user: user
})
file7 = URI.open('https://images.unsplash.com/photo-1498360531515-dbfb0146fb33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine7.photos.attach(io: file7, filename: 'nes.png', content_type: 'image/png')

cabine8 = Cabin.create!({
  title: "Le Tipie",
  localisation: "19 Rue Beautreillis, 75004 Paris, France",
  description: "Vous en sortirez sans voix",
  price_per_night: 564,
  beds: 7,
  user: user
})
file8 = URI.open('https://images.unsplash.com/photo-1542718610-a1d656d1884c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine8.photos.attach(io: file8, filename: 'nes.png', content_type: 'image/png')

cabine9 = Cabin.create!({
  title: "La tente",
  localisation: "15 rue de la Republique, 13002 Marseille, France",
  description: "tout simplement magique",
  price_per_night: 452,
  beds: 2,
  user: user
})
file9 = URI.open('https://images.unsplash.com/photo-1499696010180-025ef6e1a8f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine9.photos.attach(io: file9, filename: 'nes.png', content_type: 'image/png')

cabine10 = Cabin.create!({
  title: "Le castle perché",
  localisation: " 143 avenue du Prado , 13006 Marseille, France",
  description: "incroyable exprience",
  price_per_night: 382,
  beds: 6,
  user: user
})
file10 = URI.open('https://images.unsplash.com/photo-1568707126931-caeb2b2d095a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine10.photos.attach(io: file10, filename: 'nes.png', content_type: 'image/png')

cabine11 = Cabin.create!({
  title: "Le spot to be",
  localisation: " 23 rue de la Pompe, 75016 Paris, France",
  description: "une aventure inoubliable",
  price_per_night: 154,
  beds: 4,
  user: user
})
file11 = URI.open('https://images.unsplash.com/photo-1587061949465-2e0aa87a1704?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80')
cabine11.photos.attach(io: file11, filename: 'nes.png', content_type: 'image/png')

cabine12 = Cabin.create!({
  title: "La cabane du bonheur",
  localisation: "16 rue Sextius Michel, 75015 Paris, France",
  description: "un spot unique",
  price_per_night: 85,
  beds: 3,
  user: user
})
file12 = URI.open('https://images.unsplash.com/photo-1504713215707-76349419622d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1267&q=80')
cabine12.photos.attach(io: file12, filename: 'nes.png', content_type: 'image/png')

cabine13 = Cabin.create!({
  title: "La cabane des collègues",
  localisation: "3 rue de la Pompe, 75016 Paris, France",
  description: "ça vaut le détour",
  price_per_night: 132,
  beds: 2,
  user: user
})
file13 = URI.open('https://images.unsplash.com/photo-1509441857563-d2b146b3a408?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80')
cabine13.photos.attach(io: file13, filename: 'nes.png', content_type: 'image/png')

cabine14 = Cabin.create!({
  title: "La hute",
  localisation: "167 Rue Paradis, 13006 Marseille, France",
  description: "Top top top",
  price_per_night: 175,
  beds: 3,
  user: user
})
file14 = URI.open('https://images.unsplash.com/photo-1527474974155-741231dd1db6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
cabine14.photos.attach(io: file14, filename: 'nes.png', content_type: 'image/png')


puts 'Finished!'
