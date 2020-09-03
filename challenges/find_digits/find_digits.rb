# doctest: Returns 2 when 12 is given
# >> find_digits(12)
# => 2
# doctest: Returns 3 when 1012 is given
# >> find_digits(1012)
# => 3

def find_digits(n)
  n.digits
    .count { |e| !e.zero? && (n % e).zero? }
end

