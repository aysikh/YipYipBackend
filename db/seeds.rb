# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Location.destroy_all
Yipper.destroy_all

fairfaxva = Location.create(city: "Fairfax, VA")

amy = User.create(email: "amy@gmail.com", username: "aymes", name: "Amy", password: "nugget", location_id: fairfaxva.id)
anney = User.create(email: "anney@gmail.com", username: "theprivatepark", name: "Anney", password: "james", location_id: fairfaxva.id)
mark = User.create(email: "mark@gmail.com", username: "navak", name: "Mark", password: "wow", location_id: fairfaxva.id)

Yipper.create(content: "I need a job", vote: 69, user_id: amy.id)
Yipper.create(content: "Someone hire me", vote: 420, user_id: anney.id)
Yipper.create(content: "Job search fucking sucks", vote: 666, user_id: mark.id)


