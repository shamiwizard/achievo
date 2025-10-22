puts 'Start users creation..'
password = '12345Test'
[
  {
    email: 'test@mail.com',
    username: 'username1'
  },
  {
    email: 'test2@mail.com',
    username: 'username2'
  },
  {
    email: 'test3@mail.com',
    username: 'username3'
  },
  {
    email: 'test4@mail.com',
    username: 'username4'
  },
  {
    email: 'test5@mail.com',
    username: 'username5'
  }
].each do |user_data|
  User.find_or_create_by!(user_data) do |user|
    user.password = password
  end
  puts "User: #{user_data[:username]} created"
end
puts 'Finished users creation'
