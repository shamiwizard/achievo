puts 'Start friendship creation..'
group = Group.last
friendship = Friendship.last
group_achievement = AchievementProgress.create!(
  group:,
  achievement: Achievement.first,
  status: :in_progress,
  started_at: Time.current,
  progress: 1
)
puts "Group AchievementProgress: group - #{group_achievement.group}, achievement - #{ group_achievement.achievement} created"

friendship_achievement = AchievementProgress.create!(
  friendship:,
  achievement: Achievement.last,
  status: :not_started,
  progress: 0
)
puts "Friendship AchievementProgress: friendship - #{group_achievement.group}, achievement - #{ group_achievement.achievement} created"
puts 'Finished achievements creation.'
