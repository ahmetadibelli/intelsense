# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all

5.times do
    User.create(username:Faker::Name.unique.name, email:Faker::Internet.unique.email, password: 'noneed')
end

User.create(username: 'demouser', email: "demouser@gmail.com", password: "noneed")
