# doctest: linear_search - returns index of value's last appearance
# >> linear_search(5, [4, 5, 4, 6, 1], 4)
# => 3

# NOTE: list index starts from 1, rather than 0.

# Retrieves, formats, and assigns the input
# size, value = gets.split(' ').map(&:to_i)
# arr = gets.split(' ').map(&:to_i)

def last_ocurrence(size, arr, value)
  i = size
  while i <= size
    if arr[i - 1] == value
      return i
    elsif i < 0
      return -1
    end
    i -= 1
  end
  -1
end

# puts linear_search(size, arr, value)
