# inputs:
# - Array (two arrays)
# outputs:
# - Array (single array)
# reqs:
# - take 2 arrays as args
# - return an array that contains all (but no duplicate) values
#   from the input arrays
# rules:
# - none
# struct:
# - Array
# algo:
# - add the two input arrays
# - call uniq to remove duplicate elements
# - return the (modified) array

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
