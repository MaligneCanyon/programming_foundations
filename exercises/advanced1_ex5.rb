# this is the similar to the transpose problem, except that
  # the 1st      row of the original array gets mapped to the     last col of the new array
  # the 2nd      row of the original array gets mapped to the 2nd last col of the new array
  # ...
  # the 2nd last row of the original array gets mapped to the 2nd      col of the new array
  # the     last row of the original array gets mapped to the 1st      col of the new array

# inputs:
# - Array (nested Integers, mxn)
# outputs:
# - Array (nested Integers, nxm)
# reqs:
# - take an mxn arr
# - rtn a copy of the original matrix, rotated 90deg
# - do not modify the original matrix
# rules:
# - new row_ndx = old col_ndx
# - new col_ndx = col_size-1 minus the old row_ndx
# struct:
# - Array
# algo:
# - init a new nxm arr
# - for each row of the mxn arr
#   - for each col of the mxn arr
#     - copy the element arr[row][col] to new_arr[col][col_size-1 - row]
# - rtn the new arr

def rotate90(arr)
  col_size = arr.size # the number of rows in the original array
  row_size = arr[0].size # the number of cols in the original array
  new_arr = Array.new(row_size) { Array.new(col_size) } # creates a nil-filled row_size by col_size array
  # p new_arr
  arr.each_with_index do |sub_arr, row|
    sub_arr.each_index do |col|
    # sub_arr.each_with_index do |value, col|
      # p "#{sub_arr}, #{row}, #{value}, #{col}"
      # new_arr[row_size - 1 - col][row] = sub_arr[col] # rotates -90deg
      new_arr[col][col_size - 1 - row] = sub_arr[col] # rotates +90deg
    end
  end
  new_arr
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
new_matrix2 = rotate90(matrix2)
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))
p new_matrix3 == matrix2
