puts 'Start achievement_progresses creation..'
group = Group.last
group_achievement = AchievementProgress.create!(
  group:,
  achievement: Achievement.first,
  status: :in_progress,
  started_at: Time.current,
  progress: 1
)
puts "Group AchievementProgress: group - #{group_achievement.group.name}, achievement - #{ group_achievement.achievement.name} created"
puts 'Finished achievement_progresses creation.'
