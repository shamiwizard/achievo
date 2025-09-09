class AchievementProgress < ApplicationRecord
  enum :status, { not_started: 0, in_progress: 5, unlocked: 10, stopped: 15 }

  belongs_to :achievement
  belongs_to :friendship
  belongs_to :group
end
