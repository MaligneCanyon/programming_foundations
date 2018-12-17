# inputs:
# - Array
# outputs:
# - Integer
# reqs:
# - take a arr of ints
# - rtn the total of the sums of each leading subsequence of arr elements
# rules:
# - arr contains at least one int
# - each elem appears arr.size - i times, where i is the ndx of the arr elem
# - sum = n-0 * elem_0 + n-1 * elem_1 + ... + 2 * elem_n-2 + 1 * elem_n-1
#   sum = sigma (arr.size-ndx * arr[ndx]) [0...arr.size]
# struct:
# - numeric
# algo:
# - init a sum to 0
# - for each arr elem at ndx i
#   - sum += (arr.size - i) * elem
# - rtn the sum
def sum_of_sums(arr)
  sum = 0
  arr.each_with_index { |elem, i| sum += (arr.size - i) * elem }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
