def parenting(test, schedule)
  time_blocks = []
  schedule.map do |t|
    time_blocks << (t[0]..t[-1])
  end
  time_blocks
end


test_cases = gets.to_i

test_cases.times do |test|
  activities = gets.to_i
  schedule = []

  activities.times do
    schedule << gets.chomp.split(' ').map(&:to_i)
  end

  parenting(test, schedule)
end
