require 'pry-byebug'

def pickingNumbers(a)
  max = 0
  i = 0
  while i < a.length
    a.map { |n| a.select { |m| (n - m).abs <= 1 }}
    size = a.select { |n| (a[i] - n).abs <= 1}.count
    max = size if size > max
    binding.pry

    i += 1
  end
end

pickingNumbers([4, 6, 5, 3, 3, 1])
