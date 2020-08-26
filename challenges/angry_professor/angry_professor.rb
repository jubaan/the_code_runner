# frozen_string_literal: true

# doctest: Returns 'YES' or 'NO' if the class is cancelled or not.
# >> angryProfessor(3, [-1, -3, 4, 2])
# => "YES"
# >> angryProfessor(2, [0, -1, 2, 1])
# => "NO"

def angryProfessor(k, a)
  students_on_time = a.select { |student| student < 1 }.count
  return 'NO' if students_on_time >= k

  'YES'
end
