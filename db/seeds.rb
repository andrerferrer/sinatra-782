require 'faker'

puts "Destroy the Database"
Restaurant.destroy_all
puts `clear`
puts "💣💣💣 KABOOM"
puts "Database Destroyed"
puts "Creating Restaurants"
sleep 2

mcdonalds = Restaurant.new(
  name: 'McDonalds Rio',
  city: 'Rio'
)
mcdonalds.save

Restaurant.create(
  name: 'McDonalds Munich',
  city: 'Munich'
)

Restaurant.create(
  name: 'Burger King Rio',
  city: 'Rio'
)

Restaurant.create(
  name: 'Burger King Munich',
  city: 'Munich'
)

100.times do
  Restaurant.create(
    name: "#{Faker::Fantasy::Tolkien.character}'s Restaurant",
    city: Faker::Fantasy::Tolkien.location
  )
end

puts "Restaurants created!"
