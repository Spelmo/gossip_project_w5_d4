# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Gossip.new
a.title = "THP"
a.content ="Il parait que THP c'est de la bombe."
a.save

a = Gossip.new
a.title = "Jeux-vidéos"
a.content ="Il parait que les jeux vidéo rendent intelligent."
a.save
