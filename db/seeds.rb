# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
# WatchLater.destroy.all
User.destroy_all
 
User.create(username: "Bronte")
User.create(username: "Sewell")
User.create(username: "Girija")
 
Category.create(user:User.first,categoryname:"sports")
Category.create(user:User.first,categoryname:"games")
Category.create(user:User.first,categoryname:"news")
Category.create(user:User.first,categoryname:"songs")
Category.create(user:User.first,categoryname:"movies")

categoryname:"sports")
Category.create(user:User.last,categoryname:"games")
Category.create(user:User.last,categoryname:"news")
Category.create(user:User.last,categoryname:"songs")
Category.create(user:User.last,categoryname:"movies")
 
# WatchLater.create(user:User.first,url:"https://www.youtube-nocookie.com/embed/ryJgDL9jzKk")
