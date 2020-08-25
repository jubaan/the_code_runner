# doctest: Return the sum of the even numbers in the secuense
# >> sum_even_fibonacci(10)
# => 10
# >> sum_even_fibonacci(100)
# => 44

def sum_even_fibonacci(n)
  a = 1
  b = 2
  sum = 0
  while a <= n
    sum += a if a % 2 == 0
    a, b = b, a + b
  end
  sum
end
