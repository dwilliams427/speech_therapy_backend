# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create({ username: "daniel", email: "dw@example.com", password: "password" })

water = Card.create({name: "water", image: "image", sound: "bloop bloop"})
bathroom = Card.create({name: "bathroom", image: "image", sound: "woosh"})
kitchen = Card.create({name: "kitchen", image: "image", sound: "kitchen sounds"}) 
hungry = Card.create({name: "hungry", image: "image", sound: "hungry sounds"})

food = Tag.create({name: "food"})
water = Tag.create({name: "water"})
toilet = Tag.create({name: "toilet"})
pain = Tag.create({name: "pain"})

