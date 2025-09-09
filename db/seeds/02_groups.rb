puts 'Start groups creation..'
[
  {
    name: 'Open Group 1',
    description: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
    kind: Group.kinds[:open]
  },
  {
    name: 'Close Group 2',
    description: 'Contrary to popular belief, Lorem Ipsum is not simply random text.',
    kind: Group.kinds[:close]
  }
].each do |group_data|
  Group.find_or_create_by!(group_data)
  puts "Group: #{group_data[:name]}, created"
end
puts 'Finished groups creation'
