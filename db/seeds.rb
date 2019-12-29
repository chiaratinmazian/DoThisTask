# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
List.destroy_all
Task.destroy_all

puts 'Creating data...'

chiara = User.new(
  username: "Chiara",
  email: "chiara.tinmazian@gmail.com",
  password: "password",
  )
chiara.save!

remi = User.new(
  username: "Remi",
  email: "remi.arnaud@mellonmellon.com",
  password: "password",
  )
remi.save!

thomas = User.new(
  username: "Thomas",
  email: "tf@wearebold.co",
  password: "password",
  )
thomas.save!

florence = User.new(
  username: "Florence",
  email: "fs@wearebold.co",
  password: "password",
  )
florence.save!

puts 'Database created !!'
