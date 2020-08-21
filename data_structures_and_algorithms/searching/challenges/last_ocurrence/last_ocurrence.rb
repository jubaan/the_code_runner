# Retrieves, formats, and assigns the input
size, value = gets.split(' ').map(&:to_i)
arr = gets.split(' ').map(&:to_i)

def linear_search(size, arr, value)
  i = size
  while i <= size
    if arr[i - 1] == value
      return i + 1
    elsif i < 0
      return -1
    end
    i -= 1
  end
  -1
end

puts linear_search(size, arr, value)
