puts 'Start achievements_categories creation..'
categories = Category.all

Achievement.all.each do |achievement|
  1..rand(1..2).times do
    category = categories.sample
    next if achievement.categories.include?(category)
    achievement.categories << category
    puts "Add Category #{category.name} to Achievement #{achievement.name}"
  end
end

 puts 'Finished achievements_categories creation.'
