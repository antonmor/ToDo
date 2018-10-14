# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email:"admin@test.com",
  name:"Antonio",
  lastname:"Moreno",
  city:"Colima",
  country:"Mexico",
  address:"Aurelio Rodriguez #12",
  gender:"Masculino",
  about:"I am a practical man",
  picture:"none"
  )

puts "Create user admin..."

TodoList.create!(
    title:"Create new users",
    description:"Admin could create any user for the systems",
    iduser_id: User.first.id
  )

puts "Create for admin to lists to do ..."

TodoItem.create!(
  content: "Any trouble to do...",
  todo_lits_id: TodoList.first.id
  )

puts "Create Items to lists"