
# doctest: returns a single integer denoting the maximum number of
#          integers you can choose from the array
# doctest: 4, 6, 5, 3, 3, 1
# >> picking_numbers([4, 6, 5, 3, 3, 1])
# => 3
# doctest: 1, 2, 2, 3, 1, 2
# >> picking_numbers([1, 2, 2, 3, 1, 2])
# => 5
# doctest: 1, 2, 3, 4, 3, 2, 1
# >> picking_numbers([1, 2, 3, 4, 3, 2, 1])
# => 7
# doctest: 3, 2, 1, 4, 5, 6, 7, 8
# >> picking_numbers([3, 2, 1, 4, 5, 6, 7, 8])
# => 6

def picking_numbers(numbers)
  max = 0
  numbers.each_index do |i|
    left = numbers[..i].reverse
    pivot = numbers[i]
    right = numbers[i..]

    count_left = length(left, pivot)
    count_right = length(right, pivot)

    size = count_left <=> count_right
    triggers = { 1 => count_left, 0 => count_left, -1 => count_right }

   max = triggers[size] if triggers[size] > max
  end

  max
end

def length(collection, pivot_value)
  check_point = pivot_value
  collection.each_with_index.select { |e, i| (e - check_point).abs <= 1 && check_point = collection[i] }.length
end

if __FILE__ == $PROGRAM_NAME # rubocop:disable Style/IfUnlessModifier
  p picking_numbers([4, 6, 5, 3, 3, 1])
end

if defined? Minitest
  describe 'picking numbers' do
    it 'must return 3 for %s' % (data1 = [4, 6, 5, 3, 3, 1]).join(', ') do
      _(picking_numbers(data1)).must_equal 3
    end
    it 'must return 3 for %s' % (data2 = [4, 5, 6, 3, 3, 1]).join(', ') do
      _(picking_numbers(data2)).must_equal 3
    end
    it 'must return 6 for %s' % (data3 = [3, 2, 1, 4, 5, 6, 7, 8]).join(', ') do
      _(picking_numbers(data3)).must_equal 6
    end
  end
  # require 'pry'
end
