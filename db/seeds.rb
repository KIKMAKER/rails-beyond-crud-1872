# db/seeds.rb

puts "Clearing the DB..."
Restaurant.destroy_all
puts "✅ Database cleared!"

puts "🍽️ Seeding restaurants... let's get cooking!"

restaurants = [
  { name: "Pasta Paradise", address: "123 Spaghetti Lane", rating: 5, chef_name: "Chef Alfredo" },
  { name: "Burger Bonanza", address: "456 Patty Parkway", rating: 4, chef_name: "Grill Master Greg" },
  { name: "Sushi Central", address: "789 Sashimi Street", rating: 5, chef_name: "Sensei Sato" },
  { name: "Taco Town", address: "101 Guac Ave", rating: 3, chef_name: "Taco Terry" },
  { name: "Pizza Palace", address: "202 Mozzarella Blvd", rating: 4, chef_name: "Mama Margherita" },
  { name: "Curry Corner", address: "303 Spice Road", rating: 5, chef_name: "Curry King Kumar" },
  { name: "BBQ Barn", address: "404 Smoked Drive", rating: 4, chef_name: "Pitmaster Pete" },
  { name: "Salad Station", address: "505 Greens Circle", rating: 3, chef_name: "Leafy Linda" },
  { name: "Dim Sum Delight", address: "606 Dumpling Way", rating: 5, chef_name: "Dumpling Dan" },
  { name: "Breakfast Bistro", address: "707 Pancake Plaza", rating: 4, chef_name: "Chef Benedict" }
]

restaurants.each_with_index do |restaurant, index|
  Restaurant.create!(restaurant)
  puts "✅ Created restaurant #{index + 1}: #{restaurant[:name]} at #{restaurant[:address]} with a rating of #{restaurant[:rating]}/5, led by the legendary #{restaurant[:chef_name]}."
end

puts "🍴 Done seeding! #{Restaurant.count} restaurants created. Time to grab a bite at one of these amazing spots. 😋"
