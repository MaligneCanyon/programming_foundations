# inputs:
# - array
# outputs:
# - array
# reqs:
# - take an arr of ints as input
# - rtn an arr w/ the same number of elements as the input arr
# - elements of the rtnd array should be a running total of the elements
#   from the input arr
# rules:
# - none
# struct:
# - array
# algo:
# - init a new arr to []
# - init the running total to 0
# - for each arr elem
#   - compute the running total
#   - copy the running total to the new arr
# - rtn the new arr

# def running_total(arr)
#   new_arr = []
#   total = 0
#   arr.each do |elem|
#     total += elem
#     new_arr << total
#   end
#   new_arr
# end

def running_total(arr)
  total = 0
  arr.map { |v| total += v }
  # arr.each_with_object([]) { |v, arr| arr << total += v }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
