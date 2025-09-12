puts 'Start categories creation..'

categories = [
  {
    name: 'solo',
    description: 'Solo achievements'
  },
  {
    name: 'family',
    description: 'Family achievements'
  },
  {
    name: 'relationship',
    description: 'Relationship achievements'
  },
  {
    name: 'friends',
    description: 'Friends achievements'
  },
  {
    name: '18+ for adult',
    description: 'Achievements for adults'
  }
].each do |category|
  Category.find_or_create_by!(category)
  puts "Category - #{category[:name]} created."
end

puts 'Finished categories creation.'
