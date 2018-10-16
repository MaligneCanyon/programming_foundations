# inputs:
# - Array (two)
# output:
# - Array (single)
# reqs:
# - take two arr args, each containing a list of ints
# - create a new arr containing the product of all pairs of elements formed from the two arrays
# - rtn the new arr, sorted by incr value
# rules:
# - no empty arrs
# - arrs can be dif size
# struct:
# - Array
# algo:
# - take the product of the two arrs
# - reduce the resulting arr elements by multiplication
# - sort the resulting arr
# - rtn the resulting arr

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |sub_arr| sub_arr.reduce(:*) }.sort
end

# def multiply_all_pairs(input_arr1, input_arr2)
#   output_arr = []
#   input_arr1.each do |v1|
#     input_arr2.each do |v2|
#       output_arr << v1 * v2
#     end
#   end
#   output_arr.sort
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
