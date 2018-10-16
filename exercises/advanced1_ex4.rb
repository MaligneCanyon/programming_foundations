# inputs:
# - Array (nested Integers, mxn)
# outputs:
# - Array (nested Integers, nxm)
# reqs:
# - take an mxn arr
# - rtn the transpose of the original matrix
# - do not modify the original matrix
# rules:
# - none
# struct:
# - Array
# algo:
# - init a new nxm arr
# - for each row of the mxn arr
#   - for each col of the mxn arr
#     - copy the element arr[row][col] to new_arr[col][row]
# - rtn the new arr

def transpose(arr)
  col_size = arr.size # the number of rows in the original array
  row_size = arr[0].size # the number of cols in the original array
  new_arr = Array.new(row_size) { Array.new(col_size) } # create a nil-filled row_size-by-col_size array
  arr.each_with_index do |sub_arr, row|
    sub_arr.each_with_index { |elem, col| new_arr[col][row] = elem }
  end
  new_arr
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
