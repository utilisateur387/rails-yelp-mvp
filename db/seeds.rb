# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

le_petit_francois = Restaurant.create(name: 'Le petit François', address: 'Nantes', category: 'chinese')
bristol = Restaurant.create(name: 'Epicure', address: 'Paris', category: 'italian')
quick = Restaurant.create(name: 'Quick', address: 'Lyon', category: 'japanese')
macdo = Restaurant.create(name: "Mac Donald's", address: 'Lille', category: 'french')
pitaya = Restaurant.create(name: 'Pitaya', address: 'Marseille', category: 'belgian')

yummy = Review.new(rating: 5, content: "Very good!")
yummy.restaurant = pitaya
yummy.save!

puts "Finished!"
