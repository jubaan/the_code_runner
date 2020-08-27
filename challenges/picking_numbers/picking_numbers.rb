def picking_numbers(numbers)
  max = 0
  i = 0
  while i < numbers.length
    numbers.map { |integer| numbers.select { |m| (integer - m).abs <= 1 } }
    size = numbers.select { |integer| (numbers[i] - integer).abs <= 1 }.count
    max = size if size > max

    i += 1
  end
  max
end

if __FILE__ == $PROGRAM_NAME
  p picking_numbers([4, 6, 5, 3, 3, 1])
end
