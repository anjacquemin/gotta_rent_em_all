require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# To reset the DB before launching the seed (avoid duplicates)

Rental.destroy_all
Pokemon.destroy_all
User.destroy_all

raph = User.new({name: "raph", email: "raph@gmail.com", password: "PASSWORD", password_confirmation: "PASSWORD"})
julien = User.new({name: "julien", email: "julien@gmail.com", password: "PASSWORD", password_confirmation: "PASSWORD"})
nico = User.new({name: "nico", email: "nic@gmail.com", password: "PASSWORD", password_confirmation: "PASSWORD"})
antho = User.new({name: "antho", email: "antho@gmail.com", password: "PASSWORD", password_confirmation: "PASSWORD"})

raph.save!
julien.save!
nico.save!
antho.save!

psykokwak = Pokemon.new({name: "Psykokwak", special_capacity: "Hydrocanon", category: "Water", description: "In love with Jonathan ", address: "16 Villa Gaudelet, Paris"})
psykokwak.user = raph
psykokwak.save!
file = URI.open("https://www.123-stickers.com/7329-7724-thickbox/Array.jpg")
psykokwak.photo.attach(io: file, filename: psykokwak.name)


ronflex = Pokemon.new({name: "Ronflex", special_capacity: "Ronfffff....lex", category: "Earth", description: "Sleep all the time"})
ronflex.user = julien
ronflex.save!
file = URI.open("https://www.123-stickers.com/7455-7873-large/Array.jpg")
ronflex.photo.attach(io: file, filename: ronflex.name)

chenipan = Pokemon.new({name: "Chenipan", special_capacity: "None", category: "Insect", description: "Good friend, peaceful and quiet"})
chenipan.user = nico
chenipan.save!
file = URI.open("https://www.123-stickers.com/7285-7679-thickbox/Array.jpg")
chenipan.photo.attach(io: file, filename: chenipan.name)

mew = Pokemon.new({name: "Mew", special_capacity: "Can destroy everything", category: "Psy", description: "Hard to find..."})
mew.user = antho
mew.save!

file = URI.open("https://eternia.fr/public/media//upload/news/99ff11febe6323a17ea35b0b5bd4c6afba319976.png")
mew.photo.attach(io: file, filename: mew.name)

metamorph = Pokemon.new({name: "Metamorph", special_capacity: "Imposter", category: "Morphing", description: "A chewing gum who change into anything"})
metamorph.user = antho
metamorph.save!
file = URI.open("https://www.123-stickers.com/7444-7862-thickbox/Array.jpg")
metamorph.photo.attach(io: file, filename: metamorph.name)

lokhlass = Pokemon.new({name: "Lokhlass", special_capacity: "Laser beam", category: "Water", description: "Looks a lot like Dianita"})
lokhlass.user = nico
lokhlass.save!
file = URI.open("https://www.123-stickers.com/7443-7861-large/Array.jpg")
lokhlass.photo.attach(io: file, filename: lokhlass.name)

oh_oh = Pokemon.new({name: "Ho-Oh", special_capacity: "Unknown", category: "Legendary", description: "Legends only say he exists"})
oh_oh.user = nico
oh_oh.save!
file = URI.open("https://assets.pokemon.com/assets/cms2/img/pokedex/full/250.png")
oh_oh.photo.attach(io: file, filename: oh_oh.name)

miaouss = Pokemon.new({name: "Miaouss", special_capacity: "Scratch", category: "Earth", description: "Team Rocket modafak"})
miaouss.user = julien
miaouss.save!
file = URI.open("https://www.123-stickers.com/7327-7722-large/Array.jpg")
miaouss.photo.attach(io: file, filename: miaouss.name)

kicklee = Pokemon.new({name: "Kicklee", special_capacity: "Fire kick", category: "Combat", description: "Don't piss him off"})
kicklee.user = julien
kicklee.save!
file = URI.open("https://www.123-stickers.com/7418-7836-large/Array.jpg")
kicklee.photo.attach(io: file, filename: kicklee.name)

pikachu = Pokemon.new({name: "Pikachu", special_capacity: "Thunder", category: "Electric", description: "Shocking cute, so be careful!"})
pikachu.user = raph
pikachu.save!
file = URI.open("https://www.123-stickers.com/7300-7694-thickbox/Array.jpg")
pikachu.photo.attach(io: file, filename: pikachu.name)

dracoloss = Pokemon.new({name: "Dracoloss", special_capacity: "Ultralaser", category: "Dragoon", description: "One of the most powerful"})
dracoloss.user = nico
dracoloss.save!
file = URI.open("https://www.123-stickers.com/7461-7879-large/Array.jpg")
dracoloss.photo.attach(io: file, filename: dracoloss.name)

bulbizarre = Pokemon.new({name: "Bulbizarre", special_capacity: "Para Spore", category: "Grass", description: "Not a bad starter"})
bulbizarre.user = antho
bulbizarre.save!
file = URI.open("https://www.123-stickers.com/7276-7670-thickbox/Array.jpg")
bulbizarre.photo.attach(io: file, filename: bulbizarre.name)


rental = Rental.new(rental_beginning: "2022-01-01 00-00-00", rental_end: "2022-03-01 00-00-00")
rental.user = nico
rental.pokemon = nico.pokemons[0]
rental.save!
