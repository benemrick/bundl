# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bundls = Bundl.create([{ title: "Ruby on Rails", description: "Web development in Ruby on Rails" }, { title: "Technology", description: "My collection of news related to technology and electronics" }])
bundl = bundls.first
bundl.media_items.create(name: "Getting Started Ruby on Rails", description: "Ruby on Rails official guide for beginning up an app", url: "https://guides.rubyonrails.org/getting_started.html", source: "Ruby on Rails", bundl_id: bundl)
