def merge(arr1, arr2)
  new_arr = []
  new_arr_size = arr1.size + arr2.size
  arr1_ndx, arr2_ndx = 0, 0
  1.upto(new_arr_size) do
    if arr1_ndx == arr1.size # arr1 is fully processed
      new_arr += arr2[arr2_ndx..-1]
      break
    elsif arr2_ndx == arr2.size # arr2 is fully processed
      new_arr += arr1[arr1_ndx..-1]
      break
    elsif arr1[arr1_ndx] < arr2[arr2_ndx]
      new_arr << arr1[arr1_ndx]
      arr1_ndx += 1
    else
      new_arr << arr2[arr2_ndx]
      arr2_ndx += 1
    end
  end
  # p "arr1_ndx = #{arr1_ndx}, arr2_ndx = #{arr2_ndx}"
  # p new_arr
  new_arr
end

# [9, 5, 7, 1] ->
# [[9, 5], [7, 1]] ->
# [[[9], [5]], [[7], [1]]] ->
# [[5, 9], [1, 7]] ->
# [1, 5, 7, 9

# inputs:
# - Array (unsorted array)
# outputs:
# - Array (sorted array)
# reqs:
# - sort an array containing one type of data (all nums or all strs)
# - recursive sorting
# datastruct:
# - array to hold intermediate values
# algo: *** this doesn't work ***
# - for each pair of elements in the input array,
#   - break down pairs of elements into their own subarray
#   - for each subarray
#     - break each subarray into two tertiary arrays (each containing a single element)
#     - call merge to sort the elements of the tertiary arrays
#   - call merge to sort the elements of the subarrays
# - call merge to sort any remaining (odd numbered) element
# - output the sorted array

def merge_sort(array)
  # p array
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
