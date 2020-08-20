# Divided by 60 to obtain the hours in a 12hr clock
def overlaps?(array, element)
    array.empty? ? (0..0).include?(element/60) : ((array.last[0]/60)...(array.last[-1]/60)).include?(element/60)
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
    elsif overlaps?(cameron, time_blocks[i][0]) && overlaps?(jamie, time_blocks[i][0]) || overlaps?(cameron, time_blocks[i][-1]) && overlaps?(jamie, time_blocks[i][-1])
      break output = 'IMPOSSIBLE'
    elsif overlaps?(cameron, time_blocks[i][0]) || overlaps?(cameron, time_blocks[i][-1])
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
