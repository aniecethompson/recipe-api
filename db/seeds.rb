# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ani1 = User.create(username: "Ani1", email: "aniecet@yahoo.com")
muna1 = User.create(username: "Muna1", email: "muna1@yahoo.com")
cookbook1 = Cookbook.create(user_id: 1)
Recipe.create(cookbook_id: 1, title: "Chicken Sandwich", image: "https://www.qsrmagazine.com/sites/default/files/styles/story_page/public/news-image/popeyes-delivering-free-chicken-sandwiches.jpg?itok=Ft--fQMW")