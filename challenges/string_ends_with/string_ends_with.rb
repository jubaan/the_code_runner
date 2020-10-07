# frozen_string_literal: true

# doctest: Returns a boolean, TRUE if the string ends with second substrinc or FALSE if not
# >> solution('abc', 'bc')
# => true
# >> solution('abc', 'd')
# => false

def solution(str, ending)
  ending_size = ending.length
  ending_index = -1 * ending_size
  str[ending_index, ending_size] == ending
end

# other solution

def solution_2(str, ending)
  str.end_with?(ending)
end
