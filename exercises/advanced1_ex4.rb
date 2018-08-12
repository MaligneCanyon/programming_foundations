def transpose(arr)
  col_size = arr.size # the number of rows in the original array
  row_size = arr[0].size # the number of cols in the original array
  new_arr = Array.new(row_size) { Array.new(col_size) } # creates a nil-filled row_size by col_size array
  # p new_arr
  arr.each_with_index do |sub_arr, row|
    sub_arr.each_index do |col|
    # sub_arr.each_with_index do |value, col|
      # p "#{sub_arr}, #{row}, #{value}, #{col}"
      new_arr[col][row] = sub_arr[col]
    end
  end
  new_arr
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
