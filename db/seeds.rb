# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#cabins = Cabin.create([{ title: 'La cabine de Magalie', description: 'Le paradis sur terre', localisation: 'Marseille', price_per_night: 99, beds: 6 }, { title: 'La cabine de Mokhtar', description: 'Un coin au calme', localisation: 'Lille', price_per_night: 79, beds: 4 }, { title: 'La cabine de Vincent', description: 'Le spot idéal', localisation: 'Arcachon', price_per_night: 59, beds: 2 }])

puts 'Creating Cabins...'
Cabin.create!({
  title: "La cabane de Magalie",
  localisation: "18 Rue Beautreillis, 75004 Paris, France"
  description: "perchée au sommet"
  price_per_night: 149
  beds: 6

})
Cabin.create!({
  title: "La cabane de Mokhtar",
  localisation: "15 Rue Sainte, 13006 Marseille, France"
  description: "Couloucoucou stash stash"
  price_per_night: 229
  beds: 4
})
Cabin.create!({
  title: "La cabane de Vincent",
  localisation: "15 Rue Berthier, 78000 Versailles, France"
  description: "Pura vida"
  price_per_night: 169
  beds: 2
})
Cabin.create!({
  title: "Le cabane perchée",
  localisation: "20 Rue Beautreillis, 75004 Paris, France"
  description: "the best spot in town"
  price_per_night: 215
  beds: 3
})
Cabin.create!({
  title: "La cabane flottante",
  localisation: "5 Rue du Terras, 13002 Marseille, France"
  description: " 1,2,3 perché"
  price_per_night: 179
  beds: 6
})
Cabin.create!({
  title: "La Canopée",
  localisation: "45 Rue de le Paroisse, 78000 Versailles, France"
  description: "vous allez vous régaler"
  price_per_night: 156
  beds: 3
})
Cabin.create!({
  title: "La hute",
  localisation: "13 Rue du quai, 33000 Bordeaux, France"
  description: "jamais vous ne l'oublierez"
  price_per_night: 689
  beds: 10
})
Cabin.create!({
  title: "Le Tipie",
  localisation: "19 Rue Beautreillis, 75004 Paris, France"
  description: "Vous en sortirez sans voix"
  price_per_night: 564
  beds: 7
})
Cabin.create!({
  title: "La tente",
  localisation: "15 rue de la Republique, 13002 Marseille, France"
  description: "tout simplement magique"
  price_per_night: 452
  beds: 2
})
Cabin.create!({
  title: "Le castle perché",
  localisation: " 143 avenue du Prado , 13006 Marseille, France"
  description: "incroyable exprience"
  price_per_night: 382
  beds: 6
})
Cabin.create!({
  title: "Le spot to be",
  localisation: " 23 rue de la Pompe, 75016 Paris, France"
  description: "une aventure inoubliable"
  price_per_night: 154
  beds: 4
})
Cabin.create!({
  title: "Best cabane in town",
  localisation: "23 rue de la Pompe, 75016 Paris, France"
  description: "vivez la vie perchée"
  price_per_night: 19
  beds: 1
})
Cabin.create!({
  title: "La cabane du bonheur",
  localisation: "16 rue Sextius Michel, 75015 Paris, France"
  description: "un spot unique"
  price_per_night: 85
  beds: 3
})
Cabin.create!({
  title: "La cabane des collègues",
  localisation: "3 rue de la Pompe, 75016 Paris, France"
  description: "ça vaut le détour"
  price_per_night: 132
  beds: 2
})
Cabin.create!({
  title: "My lovely cabane",
  localisation: "23 rue de la Pompe, 13005 Marseille, France"
  description: "jamais vu un tel endroit"
  price_per_night: 252
  beds: 4
})
Cabin.create!({
  title: "Le cabanon perdu",
  localisation: "27 Boulevard bagne, 13007 Marseille, France"
  description: "meilleur spot"
  price_per_night: 115
  beds: 3
})
Cabin.create!({
  title: "La hute",
  localisation: "167 Rue Paradis, 13006 Marseille, France"
  description: "Top top top"
  price_per_night: 175
  beds: 3
})

})
puts 'Finished!'
