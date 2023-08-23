require "open-uri"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# for users:

Booking.destroy_all
Artwork.destroy_all
User.destroy_all

# Seed Users
users_data = [
  { first_name: "John", last_name: "Doe", username: "johndoe" , email: "john.doe@example.com", password: "123456", address: "Munich" },
  { first_name: "Paul", last_name: "Doe", username: "pauldoe" , email: "paul.doe@example.com", password: "123456", address: "Munich" },
  { first_name: "Alex", last_name: "Doe", username: "pauldoe" , email: "alex.doe@example.com", password: "123456", address: "Munich" },
  { first_name: "Alina", last_name: "Doe", username: "pauldoe" , email: "alina.doe@example.com", password: "123456", address: "Spain" },
]

created_users = users_data.map do |user_data|
  User.create!(user_data)
end

file = URI.open("https://images.barrons.com/im-477538?width=700&height=564")
artwork = Artwork.new(title: "tree", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "tree.png", content_type: "image/png")
artwork.user = User.first
artwork.save

file = URI.open("https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=745&q=80")
artwork = Artwork.new(title: "flowers", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "flowers.png", content_type: "image/png")
artwork.user = User.last
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.first
artwork.save

file = URI.open("https://images.unsplash.com/photo-1549277513-f1b32fe1f8f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "black and white face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "black_white_face.png", content_type: "image/png")
artwork.user = User.first
artwork.save

file = URI.open("https://images.unsplash.com/photo-1536924940846-227afb31e2a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1166&q=80")
artwork = Artwork.new(title: "abstract blue painting", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "abstract_blue.png", content_type: "image/png")
artwork.user = User.first
artwork.save

file = URI.open("https://images.unsplash.com/photo-1553022163-f7e4c1f4ccd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1154&q=80")
artwork = Artwork.new(title: "abstract red painting", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "abstract_red.png", content_type: "image/png")
artwork.user = User.first
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.first
artwork.save
