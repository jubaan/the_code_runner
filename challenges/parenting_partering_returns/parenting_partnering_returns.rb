def overlap?(activity_1, activity_2)
  return false unless activity_1
  return false unless activity_2
  [activity_1[0], activity_2[0]].max < [activity_1[-1], activity_2[-1]].min
end

def schedule(test, time_blocks)
  cameron = []
  jamie = []
  output = ''

  i = 0
  while i < time_blocks.length
    # binding.pry
    if i == 0
      cameron << time_blocks[i]
      i += 1
      next output << 'C'
    elsif jamie.any? { |activity| overlap?(activity, time_blocks[i]) } && cameron.any? { |activity| overlap?(activity, time_blocks[i]) }
      break output = 'IMPOSSIBLE'
    elsif cameron.any? { |activity| overlap?(activity, time_blocks[i]) }
      jamie << time_blocks[i]
      output << 'J'
    else
      cameron << time_blocks[i]
      output << 'C'
    end
    i += 1
 end
  "Case ##{test}: #{output}"
end

# Gets input, and assigns it to variables
test_cases = gets.to_i
test_cases.times do |test|
  activities = gets.to_i
  schedule = []
  activities.times do
    schedule << gets.chomp.split(' ').map(&:to_i)
  end
  puts schedule(test + 1, schedule)
end

