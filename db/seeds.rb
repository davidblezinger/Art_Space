require "open-uri"
require "date"

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
  { first_name: "John", last_name: "Doe", username: "johndoe" , email: "john.doe@example.com", password: "123456", address: "Via Pratovecchio, 00138" },
  { first_name: "Paul", last_name: "Doe", username: "pauldoe" , email: "paul.doe@example.com", password: "123456", address: "Via Collatina, Roma" },
  { first_name: "Alex", last_name: "Doe", username: "alexdoe" , email: "alex.doe@example.com", password: "123456", address: "Via Del Pigneto 31, Roma" },
  { first_name: "Alina", last_name: "Doe", username: "alinadoe" , email: "alina.doe@example.com", password: "123456", address: "Avinguda De Joan Castelló, 07816" },
  { first_name: "Paco", last_name: "Doe", username: "pacodoe" , email: "paco.doe@example.com", password: "123456", address: "Via Di Valle Porcina, 00125" },
  { first_name: "Juan", last_name: "Doe", username: "juandoe" , email: "juan.doe@example.com", password: "123456", address: "Via Della Falcognana, 00134" },
  { first_name: "Pepe", last_name: "Doe", username: "pepedoe" , email: "pepe.doe@example.com", password: "123456", address: "" },
  { first_name: "Marta", last_name: "Doe", username: "martadoe" , email: "marta.doe@example.com", password: "123456", address: "Avinguda Pere Matutes Noguera, 07800" },
  { first_name: "Paula", last_name: "Doe", username: "pauladoe" , email: "paula.doe@example.com", password: "123456", address: "Carrer De L'estruç, 07819" },
  { first_name: "Erik", last_name: "Doe", username: "erikdoe" , email: "erik.doe@example.com", password: "123456", address: "Carrer Fruitera, 07800" },
  { first_name: "Karl", last_name: "Doe", username: "karldoe" , email: "karl.doe@example.com", password: "123456", address: "Carrer Des Botafoch, 07800" },
  { first_name: "Steven", last_name: "Doe", username: "stevendoe" , email: "steven.doe@example.com", password: "123456", address: "Via Casilina Vecchia, 00182" }
]

created_users = users_data.map do |user_data|
  User.create!(user_data)
end

file = URI.open("https://images.unsplash.com/photo-1579783902614-a3fb3927b6a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=745&q=80")
artwork = Artwork.new(title: "flowers", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "flowers.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 1)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 2)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1549277513-f1b32fe1f8f5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "black and white face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "black_white_face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 3)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1536924940846-227afb31e2a5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1166&q=80")
artwork = Artwork.new(title: "abstract blue painting", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "abstract_blue.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 4)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1553022163-f7e4c1f4ccd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1154&q=80")
artwork = Artwork.new(title: "abstract red painting", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "abstract_red.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 5)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 6)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 7)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547891654-e66ed7ebb968?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 8)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1573096108468-702f6014ef28?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3348&q=80")
artwork = Artwork.new(title: "face", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 9)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1547826039-bfc35e0f1ea8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3344&q=80")
artwork = Artwork.new(title: "oil painting", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 10)
artwork.save

file = URI.open("https://images.unsplash.com/photo-1578301978018-3005759f48f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=3244&q=80")
artwork = Artwork.new(title: "Birmingham", description: "Description 1", category: "Painting", price: "99.99" )
artwork.photo.attach(io: file, filename: "face.png", content_type: "image/png")
artwork.user = User.find(User.first.id + 11)
artwork.save
