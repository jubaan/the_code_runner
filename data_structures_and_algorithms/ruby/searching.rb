# Linear Search - Unsorted Input

# doctest: returns a boolean value if the value is found or not
# >> linear_search_unsorted([9,4,2,20,35,1,], 1)
# => true
# >> linear_search_unsorted([9,4,2,20,35,1,], 100)
# => false

def linear_search_unsorted(arr, value)
  size = arr.length
  i = 0
  while i < size
    return true if value == arr[i]

    i += 1
  end
  false
end

# Linear Search - Sorted Input

# doctest: returns a boolean value if the value is found or not
# >> linear_search_sorted([1, 2, 3, 4, 5, 6], 4)
# => true
# >> linear_search_sorted([1, 2, 3, 4, 5, 6], 7)
# => false

def linear_search_sorted(arr, value)
  size = arr.length
  i = 0
  while i < size
    if value == arr[i]
      return true
    elsif value < arr[i] # Stops loop from searching until end of array
      return false
    end

    i += 1
  end
end
