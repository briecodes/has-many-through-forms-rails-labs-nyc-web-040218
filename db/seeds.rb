# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "olliver28", email: "olliver28@gmail.com")
User.create(username: "letumubique99", email: "letumubique99@gmail.com")
User.create(username: "djangojane", email: "djangojane@gmail.com")
User.create(username: "partyanimal1999", email: "partyanimal1999@gmail.com")

Category.create(name: "Science")
Category.create(name: "General Interest")
Category.create(name: "Medicine")
Category.create(name: "Music")

Post.create(title: "Crud with Rails", content: "So many errors abound…")
Post.create(title: "Dirty Computer", content: "Late April release from JM!")
Post.create(title: "Annihilation", content: "This book was a mindfuck!")

PostCategory.create(post_id: 1, category_id: 1)
PostCategory.create(post_id: 1, category_id: 2)
PostCategory.create(post_id: 2, category_id: 1)
PostCategory.create(post_id: 2, category_id: 4)
PostCategory.create(post_id: 3, category_id: 1)
PostCategory.create(post_id: 3, category_id: 2)
PostCategory.create(post_id: 3, category_id: 3)