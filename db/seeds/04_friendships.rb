puts 'Start friendship creation..'
user_first = User.first
user_last = User.last

Friendship.create!(user: user_first, friend: user_last)
Friendship.create!(user: user_last, friend: user_first)
puts 'Finished friendship creation.'
