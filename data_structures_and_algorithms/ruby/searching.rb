# Linear Search - Unsorted Input

# doctest: returns a boolean value if the value is found or not
# >> linear_search([9,4,2,20,35,1,], 1)
# => true

def linear_search(arr, value)
  size = arr.length
  i = 0
  while i < size
    return true if value == arr[i]
    i += 1
  end
  return false
end
