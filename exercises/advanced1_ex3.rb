def transpose(arr)
  size = arr.size
  new_arr = Array.new(size) { Array.new(size) } # creates a nil-filled size-by-size array
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
