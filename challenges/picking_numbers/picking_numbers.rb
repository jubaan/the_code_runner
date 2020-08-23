require 'pry-byebug'
# doctest: returns a single integer denoting the maximum number of
# integers you can choose from the array
# >> pickingNumbers([4, 6, 5, 3, 3, 1])
# => 3
# >> pickingNumbers([1, 2, 2, 3, 1, 2])
# => 5
# >> pickingNumbers([1, 2, 3, 4, 3, 2, 1])
# => 7
# >> pickingNumbers([3, 2, 1, 4, 5, 6, 7, 8])
# => 6
def pickingNumbers(a)
  array = []
  i = 0
  max = 0
  j = 0
  while j < a.length
    while i < a.length
      # binding.pry
      if array.empty?
        array << a[j]
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
    max = array.count if max < array.count
    j += 1
  end
  max
end
a = [4, 6, 5, 3, 3, 1]

pp pickingNumbers(a)
