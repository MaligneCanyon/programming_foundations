# inputs:
# - arr
# outputs:
# - arr
# reqs:
# - take an input arr
# - rtn a new arr w/ sub_arrs ordered (alphabetically or numerically) in descending order
# rules:
# struct:
# - arr
# algo:
# - init a new_arr to []
# - for each sub_arr in the input arr
#   - sort the sub_arr in descending order
#   - map the result back to the arr
# - rtn the arr w/ sorted sub_arrs

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
p arr.map { |sub_arr| sub_arr.sort { |a, b| b <=> a} }
p arr

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
# new_arr = arr.map do |subarr|
#   subarr.sort do |a, b|
#     b <=> a
#   end
# end
# p new_arr
