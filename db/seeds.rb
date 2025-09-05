# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Create users
puts 'Start user creation..'
[
  {
    email: 'test@mail.com',
    username: 'username1',
    password: '12345Test'
  },
  {
    email: 'test2@mail.com',
    username: 'username2',
    password: '12345Test'
  }
].each do |user_data|
  User.create!(user_data)
  puts "User: #{user_data[:username]} created"
end
puts 'Finished user creation'
