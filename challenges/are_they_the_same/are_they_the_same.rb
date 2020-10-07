# frozen_string_literal: true

# doctest: Returns boolean value if both arrays are the same or not.
# >> comp([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
# => true
# >> comp([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361])
# => false
# >> comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 36100, 25921, 361, 20736, 361])
# => false

def comp(array1, array2)
  return false if array1.nil? || array2.nil?

  array1.sort.map { |e| e * e } == array2.sort
end

# solution 2

# doctest: comp_2 Returns boolean value if both arrays are the same or not.
# >> comp_2([121, 144, 19, 161, 19, 144, 19, 11], [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19])
# => true
# >> comp_2([121, 144, 19, 161, 19, 144, 19, 11], [132, 14641, 20736, 361, 25921, 361, 20736, 361])
# => false
# >> comp_2([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 36100, 25921, 361, 20736, 361])
# => false

def comp_2(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map { |e| e * e } == array2.sort
end
