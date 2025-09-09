puts 'Start achievements creation..'
achievements = [
  {
    name: 'Watch Lord of the ring thrielogy',
    description: Faker::Lorem,
    kind: 'Test'
  },
  {
    name: 'Visit all coutry of europ'
    description: Faker::Lorem,
    kind: 'Test',
  }
].each do |achievement|
  Achievement.find_or_create_by!(**achievement)
  puts "Achievement: #{achievement[:name]}"
end
puts 'Finished achievements creation.'
