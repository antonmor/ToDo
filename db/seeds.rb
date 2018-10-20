# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email:"your@gmail.com",
  name:"yourname",
  lastname:"yourlastname",
  city:"yourcity",
  country:"yourcontry",
  address:"youraddress",
  gender:"yourgender",
  about:"how about you",
  picture:"xxx",
  password: "your password"
  )

puts "Create user admin..."

TodoList.create!(
    title:"Create new users",
    description:"Admin could create any user for the systems",
    user_id: User.first.id
  )

puts "Create for admin to lists to do ..."

16.times do |k|
TodoItem.create!(
  content: "Task number: #{k}",
  todo_list_id: TodoList.first.id
  )
end

puts "Create Items to lists"