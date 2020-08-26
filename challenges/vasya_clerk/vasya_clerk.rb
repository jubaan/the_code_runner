# doctest: Returns 'YES' if Vasya can sell everyone a ticket or 'NO' if he # cann't
# >> tickets([25, 25, 50])
# => 'YES'
# >> tickets([25, 100])
# => 'NO'
# >> tickets([25, 25, 50, 50, 100])
# => 'NO'

def tickets(people)
  money = {25 => 0, 50 => 0, 100 => 0 }

  people.each do |bill|
    money[bill] += 1

    change = bill - 25

    case change
    when 25
      return 'NO' unless money[25].positive?

      money[25] -= 1
    when 75
      if money[50].positive?
        return 'NO' unless money[25].positive?

        money[50] -= 1
        money[25] -= 1
      else
        return 'NO' unless money[25] >= 3

        money[25] -= 3
      end
    end
  end

  'YES'
end
