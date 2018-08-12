# inputs: two arrays
# output: array
# reqs:
# - output array contains all elements from the input arrays, with the elements taken alternately from the two input
#   arrays
# rules:
# - both input arrays non-empty
# - input arrays are same length
# datastruct: array
# algo:
# - for each element in the input arrays
#   - alternately copy the element from array1 and array2 into the output array
# - return the output array

def interleave(input_arr1, input_arr2)
  # output_arr = []
  # (0...input_arr1.size).each do |i|
  #   output_arr << input_arr1[i]
  #   output_arr << input_arr2[i]
  # end

  output_arr = input_arr1.zip(input_arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c'])
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
