# inputs:
# - Array
# outputs:
# - Array
# reqs:
# - take an arr as an arg
# - reverse its elements (but do not mutate the arr)
# - return the reversed arr
# rules:
# - none
# struct:
# - Array
# algo:
# - for each element in the arr
#   - unshift the element into a new arr
# - return the new arr

def reverse(arr)
  new_arr = []
  arr.each { |elem| new_arr.unshift(elem) }
  new_arr
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
