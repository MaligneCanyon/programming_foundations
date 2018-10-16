# inputs:
# - Array
# outputs:
# - Array
# reqs:
# - take an arr as an arg
# - reverse its elements in place (mutate)
# - return the same arr
# rules:
# - none
# struct:
# - Array
# algo:
# - for each element at ndx n in the arr, upto (but excluding) the arr midpoint,
#   swap the array element at ndx n w/ the element at ndx (-1 - n)
#   - arr midpoint == arr.size / 2
#     [0,1,2,3,4] -> midpoint == 2
#     [0,1,2,3] -> midpoint == 2
#   - arr[n], arr[-1 - n] = arr[-1 - n], arr[n]

def reverse!(arr)
  midpoint = arr.size / 2
  (0...midpoint).each { |n| arr[n], arr[-1 - n] = arr[-1 - n], arr[n] }
  arr
end

list = [1,2,3,4]
result = reverse!(list) # => [4,3,2,1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b c d e)
reverse!(list) # => ["e", "d", "c", "b", "a"]
p list == ["e", "d", "c", "b", "a"]

list = ['abc']
reverse!(list) # => ["abc"]
p list == ["abc"]

list = []
reverse!(list) # => []
p list == []
