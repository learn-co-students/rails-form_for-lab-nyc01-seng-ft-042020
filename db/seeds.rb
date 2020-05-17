# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "...destroying School Classes"
SchoolClass.destroy_all

puts "...destroying Student Data"
Student.destroy_all

puts "...creating School Classes"
10.times do
    SchoolClass.create(title: Faker::Educator.course_name, room_number: rand(1001..1005))
end

puts "...creating Student Data"
25.times do 
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
