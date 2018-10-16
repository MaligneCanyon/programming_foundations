# inputs:
# - Array
# outputs:
# - Integer
# reqs:
# - take a arr of ints
# - rtn the total of the sums of each leading subsequence of arr elements
# rules:
# - arr contains at least one int
# algo:
# - init the total to 0
# - while arr size > 0
#   - sum the arr elements
#   - add the sum to the total
#   - pop off the last arr element
# - rtn the total

# def sum_of_sums(arr)
#   total = 0
#   loop do
#     total += arr.sum
#     arr.pop
#     break if arr.size == 0
#   end
#   total
# end

def sum_of_sums(arr)
  sum = 0
  # each elem appears arr.size - i times, where i is the ndx of the arr elem
  arr.each_with_index { |v, i| sum += v * (arr.size - i) }
  sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
