# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Clear existing data
User.destroy_all
Post.destroy_all

user1 = User.create!(
  name: "Sayali More",
  bio: "Passionate developer.",
  email: "sayali@example.com",
  date_of_birth: "1990-01-01",
  password: "password"
)

user2 = User.create!(
  name: "Sampada Deshmukh",
  bio: "I am a frontend developer.",
  email: "sampada@example.com",
  date_of_birth: "1985-05-15",
  password: "password"
)

user3 = User.create!(
  name: "Aditi Biramane",
  bio: "Loves hiking.",
  email: "aditi@example.com",
  date_of_birth: "1978-12-25",
  password: "password"
)

post1 = Post.create!(
  content: "This is my first post! Excited to join this platform.",
  user: user1
)

post2 = Post.create!(
  content: "Had a great day!.",
  user: user2
)

post3 = Post.create!(
  content: "love to read books.",
  user: user3
)
puts "Seeding completed successfully."