# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# for users:
User.destroy_all
Artwork.destroy_all

users = [
  { first_name: "John", last_name: "Doe", username: "jhondoe" , email: "john.doe@example.com" },
  { first_name: "Paul", last_name: "Doe", username: "pauldoe" , email: "paul.doe@example.com" },
  { first_name: "Alex", last_name: "Doe", username: "alexdoe" , email: "alex.doe@example.com" },
  { first_name: "Alina", last_name: "Doe", username: "alinadoe" , email: "alina.doe@example.com" },
  { first_name: "Brianna", last_name: "Doe", username: "briannadoe" , email: "brianna.doe@example.com" },

]

users.each do |user|
  User.create(user)
end

artworks = [
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "99.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Oil painting", price: "89.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "10.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "1.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Oil painting", price: "209.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Oil painting", price: "19.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "49.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Oil painting", price: "59.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "69.99" },
  { image_url: "https://images.unsplash.com/photo-1561214115-f2f134cc4912?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1009&q=80", description: "Very beautiful painting!", category: "Painting", price: "79.99" },
]

artworks.each do |artwork|
  Artwork.create(artwork)
end
