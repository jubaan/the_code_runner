
# doctest: Returns a string, "IMPOSSIBLE" if it cann't be solved or a string with the case number and one of the possible schedules
# >> schedule(1, [[360, 480], [420, 540], [600,660]])
# => "Case #1: CJC"

def overlap_any?(assigned_schedule, new_activity)
  assigned_schedule.any? do |activity|
    [activity[0], new_activity[0]].max < [activity[-1], new_activity[-1]].min
  end
end

def schedule(test, time_blocks)
  cameron = []
  jamie = []
  output = ''

  i = 0
  while i < time_blocks.length
    if i == 0
      cameron << time_blocks[i]
      i += 1
      next output << 'C'
    elsif overlap_any?(jamie, time_blocks[i]) && overlap_any?(cameron, time_blocks[i])
      break output = 'IMPOSSIBLE'
    elsif overlap_any?(cameron, time_blocks[i])
      jamie << time_blocks[i]
      output << 'J'
    elsif !overlap_any?(jamie, time_blocks[i])
      jamie << time_blocks[i]
      output << 'J'
    elsif overlap_any?(jamie, time_blocks[i])
      cameron << time_blocks[i]
      output << 'C'
    end
    i += 1
 end
  "Case ##{test}: #{output}"
end

# Gets input, and assigns it to variables
# test_cases = gets.to_i
# test_cases.times do |test|
#   activities = gets.to_i
#   schedule = []
#   activities.times do
#     schedule << gets.chomp.split(' ').map(&:to_i)
#   end
#   puts schedule(test + 1, schedule)
# end



