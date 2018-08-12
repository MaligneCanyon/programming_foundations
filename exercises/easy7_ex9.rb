def multiply_all_pairs(input_arr1, input_arr2)
  output_arr = []
  input_arr1.each do |v1|
    input_arr2.each do |v2|
      output_arr << v1 * v2
    end
  end
  output_arr.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
