require 'pry-byebug'
# doctest: returns a single integer denoting the maximum number of
# integers you can choose from the array
# >> pickingNumbers([4, 6, 5, 3, 3, 1])
# => 3
# >> pickingNumbers([1, 2, 2, 3, 1, 2])
# => 5
def pickingNumbers(a)
  array = []
  i = 0
  while i < a.length
    # binding.pry
    if array.empty?
      array << a[i]
      next i += 1
    elsif (array.last - a[i]).abs <= 1
      array << a[i]
      next i += 1
    elsif (array.last - a[i]).abs > 1 && (array[array.length - 2] - a[i]).abs <= 1
      array.pop
      array << a[i]
      next i += 1
    elsif (array.last - a[i]).abs > 1
      next i += 1
    end
  end
  array.length
end
a = [4, 6, 5, 3, 3, 1]

pp pickingNumbers(a)
