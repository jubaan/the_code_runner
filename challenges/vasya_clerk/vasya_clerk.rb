require 'pry-byebug'
# frozen_string_literal: true

# doctest: 1
# >> tickets([25, 25, 50])
# => 'YES'
# doctest: 2
# >> tickets([25, 100])
# => 'NO'
# doctest: 3
# >> tickets([25, 25, 50, 50, 100])
# => 'NO'

def tickets(people)
  money = { 25 => 0, 50 => 0, 100 => 0 }
  people.each do |bill|
    money = case bill
            when 25
              money[25] += 1
            when 50
              money[50] += 1
            when 100
              money[100] += 1
            end

    change = case bill
             when 25
               0
             when 50
               money[25] -= 1
               return 'NO' if money[25] < 0
             when 100
               money[25] -= 3
               money[25] -= 1
               money[50] -= 1
               return 'NO' if money[25] -= 3 < 0 || (money[50] -= 1 < 0
             end
  end
  'YES'
end
