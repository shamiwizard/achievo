puts 'Start groups_users creation..'
users = User.all
groups = Group.all

users.each do |user|
  groups.each do |group|
    next if user.groups.include?(group)

    user.groups << group
    puts "User: #{user.username} to Group: #{group.name}"
  end
end
puts 'Finished groups_users creation.'
