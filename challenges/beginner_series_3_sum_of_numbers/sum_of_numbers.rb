# doctest: Returns the sum of all numbers between a range including first and last, or return the number if first and last are the same
# >> get_sum(0,1)
# => 1
# >> get_sum(0, -1)
# => -1
# >> get_sum(1, 2)
# => 3
# >> get_sum(5, -1)
# => 14
# >> get_sum(5, 5)
# => 5

def get_sum(a, b)
  if a < b
    [*(a..b)].sum
  else
    [*(b..a)].sum
  end
end

# refactor

def get_sum_2(a, b)
  a < b ? [*(a..b)].sum : [*(b..a)].sum
end

def get_sum_3(a, b)
  a < b ? (a..b).sum : (b..a).sum
end
