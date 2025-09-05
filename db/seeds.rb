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
puts 'Start users creation..'
password = '12345Test'
[
  {
    email: 'test@mail.com',
    username: 'username1',
  },
  {
    email: 'test2@mail.com',
    username: 'username2',
  }
].each do |user_data|
  User.find_or_create_by!(user_data) do |user|
    user.password = password
  end
  puts "User: #{user_data[:username]} created"
end
puts 'Finished users creation'

puts

puts 'Start groups creation..'
[
  {
    name: 'Open Group 1',
    description: Faker::Lorem.sentence,
    kind: Group.kinds[:open]
  },
  {
    name: 'Close Group 2',
    description: Faker::Lorem.sentence,
    kind: Group.kinds[:close]
  }
].each do |group_data|
  Group.find_or_create_by!(group_data)
  puts "Group: #{group_data[:name]}, created"
end
puts 'Finished groups creation'
