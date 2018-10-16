# inputs:
# - Array (two)
# outputs:
# - Array
# reqs:
# - take two arr args, each containing a list of ints
# - return a new arr containing the product of each pair of ints having the same
#   ndx in the input arrays
# rules:
# - the arr args have the same num of elements
# struct:
# - Array
# algo:
# - init a new array to []
# - for each element in the 1st arr
#   - multiply the element with the corresponding element in the 2nd arr
#   - append the result to a new array
# - return the new array


def multiply_list(arr1, arr2)
  # arr = []
  # arr1.each_with_index { |elem, i| arr << elem * arr2[i] }
  # arr
  arr1.zip(arr2).map { |sub_arr| sub_arr.reduce(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
