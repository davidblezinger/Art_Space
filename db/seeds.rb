# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# for users:

Artwork.destroy_all
User.destroy_all

# Seed Users
users_data = [
  { first_name: "John", last_name: "Doe", username: "jhondoe" , email: "john.doe@example.com", password: "123456" },
  { first_name: "Paul", last_name: "Doe", username: "pauldoe" , email: "paul.doe@example.com", password: "123456" },
  { first_name: "Alex", last_name: "Doe", username: "pauldoe" , email: "alex.doe@example.com", password: "123456" },
  { first_name: "Alina", last_name: "Doe", username: "pauldoe" , email: "alina.doe@example.com", password: "123456" },
]

created_users = users_data.map do |user_data|
  User.create!(user_data)
end


artworks_data = [
  { image_url: "https://image.url/1", description: "Description 1", category: "Painting", price: "99.99" },
  { image_url: "https://image.url/2", description: "Description 2", category: "Oil painting", price: "89.99" },
  { image_url: "https://image.url/2", description: "Description 3", category: "Canvas painting", price: "29.99" },
  { image_url: "https://image.url/2", description: "Description 4", category: "Picture", price: "39.99" },
  { image_url: "https://image.url/2", description: "Description 5", category: "Painting", price: "49.99" },
]

artworks_data.each_with_index do |artwork_data, index|
  user = created_users[index % created_users.size] # This will associate artworks with users in a loop.
  Artwork.create!(artwork_data.merge(user: user))
end
