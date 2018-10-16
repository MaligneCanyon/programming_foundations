# inputs:
# - Array (nested Integers, 3x3)
# outputs:
# - Array (nested Integers, 3x3)
# reqs:
# - take a 3x3 arr
# - rtn the transpose of the original matrix
# - do not modify the original matrix
# rules:
# - none
# struct:
# - Array
# algo:
# - init a new 3x3 arr
# - for each row of the arr
#   - for each col of the arr
#     - copy the element arr[row][col] to new_arr[col][row]
# - rtn the new arr

def transpose(arr)
  size = arr.size
  new_arr = Array.new(size) { Array.new(size) } # create a nil-filled size-by-size array
  arr.each_with_index do |sub_arr, row|
    sub_arr.each_with_index { |elem, col| new_arr[col][row] = elem }
  end
  new_arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]
new_matrix = transpose(matrix)
p new_matrix
p new_matrix == [
  [1, 4, 3],
  [5, 7, 9],
  [8, 2, 6]
]
p matrix
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
p matrix.object_id != new_matrix.object_id
