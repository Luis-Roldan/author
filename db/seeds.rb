# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Book.destroy_all
Creator.destroy_all

# Reseteamos los IDs en la base de datos (PostgreSQL)
ActiveRecord::Base.connection.reset_pk_sequence!('creators')
ActiveRecord::Base.connection.reset_pk_sequence!('books')

puts "seeding authors..."

30.times do |i|
  creator = Creator.create(name: Faker::Book.author, age: rand(18..100), country: Faker::Address.country, career: Faker::Job.field, awards: rand(0..20), active: [true, false].sample )

  puts "seeding books... for creator #{i + 1}"

  20.times do
    Book.create(title: Faker::Book.title, pages: rand(100..500), creator_id: creator.id, publisher: Faker::Book.publisher, genre: Faker::Book.genre, rating: rand(1..5))
  end
end

puts "seeding Complete!"
