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

carapace = Pokemon.new({name: "Psykokwak", special_capacity: "hydrocanon", category: "water", description: "In love with himself "})
carapace.user = raph
carapace.save!

ronflex = Pokemon.new({name: "Ronflex", special_capacity: "Ronfffff....lex", category: "Earth", description: "Sleep all time"})
ronflex.user = julien
ronflex.save!

chenipan = Pokemon.new({name: "Chenipan", special_capacity: "None", category: "insect", description: "Good friend, peace and quiet"})
chenipan.user = nico
chenipan.save!

mew = Pokemon.new({name: "Mew", special_capacity: "destroy everything", category: "psy", description: "Hard to find..."})
mew.user = antho
mew.save!


rental = Rental.new(rental_beginning: "2022-01-01 00-00-00", rental_end: "2022-03-01 00-00-00")
rental.user = nico
rental.pokemon = nico.pokemons[0]
rental.save!
