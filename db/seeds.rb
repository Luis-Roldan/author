# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Creator.destroy_all

 puts "seeding authors..."
10.times do
  Creator.create(name: Faker::Name.name, age: rand(18..100))

  puts "seeding books..."

  30.times do
    Book.create(title: Faker::Book.name, pages: rand(100..500))
    puts "seeding books complete!"
  end


end

puts "seeding Complete!"
