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

def reverse(arr)
  new_arr = arr.map { |v| v }
  p arr.object_id, new_arr.object_id
  reverse!(new_arr)
end

# def reverse(arr) # works, but more complicated
#   new_arr = arr.each_with_object([]) { |v, a| a << v }
#   p arr.object_id, new_arr.object_id
#   reverse!(new_arr)
# end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b c d e)) == %w(e d c b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 2, 3]                      # => [1, 2, 3]
new_list = reverse(list)              # => [3, 2, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 2, 3]                     # => true
p new_list == [3, 2, 1]                 # => true
