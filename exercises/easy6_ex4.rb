# input: array
# output: array
# reqs:
# - reverse arr elements in place
# - return the same (mutated) array
# rules:
# - none
# datastruct: array
# algo:
# - determine array midpoint_ndx
#   (0 1 2 3 4 5 6).size == 7, midpoint_ndx = size / 2 == 3
#   (0 1 2 3 4 5 6 7).size == 8, midpoint_ndx = size / 2 == 4
#   midpoint_ndx = arr.size / 2
#   last_ndx = -1
# - set ndx == 0
# - while ndx < midpoint_ndx
#     swap 1st and last element
#     swap 2nd and 2nd_last element
#     etc ...
# - return the array

LAST_NDX = -1

def reverse!(arr)
  midpoint_ndx = arr.size / 2
  #p midpoint_ndx
  ndx = 0
  while ndx < midpoint_ndx
    arr[ndx], arr[LAST_NDX - ndx] = arr[LAST_NDX - ndx], arr[ndx]
    ndx += 1
  end
  #p arr
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
