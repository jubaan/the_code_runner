# doctest: prints a 3 of beautiful triplets.
# >> beautifulTriplets(3, [1, 2, 4, 5, 7, 8, 10])
# => 3

def beautifulTriplets(d, arr)
  check_point = arr.last
  array = []

  i = 0
  while i < d
    arr.each_cons(d) { |a| ckeck_point - a == 3}
  end
end
