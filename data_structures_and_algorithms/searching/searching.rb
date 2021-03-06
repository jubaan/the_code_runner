# frozen_string_literal: true

# Linear Search - Unsorted Input

# doctest: ::linear_search_unsorted - returns a boolean value if the value is found or not
# >> linear_search_unsorted([9,4,2,20,35,1,], 1)
# => true
# >> linear_search_unsorted([9,4,2,20,35,1,], 100)
# => false

def linear_search_unsorted(arr, value)
  size = arr.length
  i    = 0
  while i < size
    return true if value == arr[i]

    i += 1
  end
  false
end

# Linear Search - Sorted Input

# doctest: ::linear_search_sorted - returns a boolean value if the value is found or not
# >> linear_search_sorted([1, 2, 3, 4, 5, 6], 4)
# => true
# >> linear_search_sorted([1, 2, 3, 4, 5, 6], 7)
# => false

def linear_search_sorted(arr, value)
  size = arr.length
  i    = 0
  while i < size
    if value == arr[i]
      return true
    elsif value < arr[i] # Stops loop from searching until end of array
      return false
    end

    i += 1
  end
  false
end

# Binary Search

# NOTE: binary search only works with sorted lists

# doctest: ::binary_search - returns a boolean value if the value is found or not
# >> binary_search([10, 20, 30, 40, 50], 50)
# => true

def binary_search(arr, value)
  low  = 0
  high = arr.size - 1
  while low <= high
    mid = low + (high - low) / 2 # To avoid the overflow
    if arr[mid] == value
      return true
    elsif arr[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end
  false
end

# Binary Search - Recursive

# doctest: ::binary_search_recursive - returns a boolean value if the value is found or not
# >> binary_search_recursive([10, 20, 30, 40, 50], 50)
# => true

def binary_search_recursive(arr, value)
  binary_search_recursive_helper(arr, 0, arr.size - 1, value)
end

def binary_search_recursive_helper(arr, low, high, value)
  return false if low > high

  mid = low + (high - low) / 2 # To avoid the overflow
  if arr[mid] == value
    true
  elsif arr[mid] < value
    binary_search_recursive_helper(arr, mid + 1, high, value)
  else
    binary_search_recursive_helper(arr, mid - 1, high, value)
  end
end
