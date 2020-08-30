# def sum_of(integers)
#   sum = 0
#   integers.each do |n|
#     sum += n
#   end
#   sum
# end

def sum_of(integers)
  amount = integers.inject(:+)
  "Sum is equal to #{amount}"
end

# def sum_of(integers)
  # 'Sum is equal to %s' % integers.sum
# end

integers = [1, 2, 3, 4, 5]

puts sum_of(integers)

