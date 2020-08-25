# doctest: Returns the minimum number of potions
# >> potions_to_take(4, [1, 6, 3, 5, 2])
# => 2
# >> potions_to_take(7, [2, 5, 4, 5, 2])
# => 0

def potions_to_take(jump_height, hurdle_heights)
  max_hurdle_height = hurdle_heights.max
  jump_height >= max_hurdle_height ? 0 : max_hurdle_height - jump_height
end
