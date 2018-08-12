def multiply_list(input_arr1, input_arr2)
  # output_arr = []
  # (0...input_arr1.size).each { |i| output_arr << input_arr1[i] * input_arr2[i] }
  # output_arr
  input_arr1.zip(input_arr2).map { |v| v.reduce(1, :*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
