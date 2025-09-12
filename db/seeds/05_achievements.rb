puts 'Start achievements creation..'
achievements = [
  {
    name: 'Watch Lord of the ring thrielogy',
    description: 'Watch lord of the trilogy without pause.',
    kind: 'Test',
    icon: 'test icon'
  },
  {
    name: 'Visit all coutry of europ',
    description: 'Visit all count 44 countries in europ',
    kind: 'Test',
    icon: 'test icon 2'
  }
].each do |achievement|
  Achievement.find_or_create_by!(**achievement)
  puts "Achievement: #{achievement[:name]}"
end
puts 'Finished achievements creation.'
