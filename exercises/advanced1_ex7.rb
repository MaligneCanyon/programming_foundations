# inputs:
# - Array (the two arrays to be merged)
# outputs:
# - Array (a single merged array)
# reqs:
# - do not mutate the input arrays
# - return a new array that contains all elements from both input arrays in sorted order
# rules:
# - output array size == sum of input array sizes
# datastruct:
# - Array (to hold the elements from the arrays; dbls as the output array)
# algo:
# - calc the size of the output array (sum of sizes of input arrays)
# - init an ndx for each input array to zero
# - for 1 upto the size of the output array
#     if there are no more elements in the 1st input array, add the remainder of the 2nd input array to the output array
#     if there are no more elements in the 2nd input array, add the remainder of the 1st input array to the output array
#     otherwise, compare the value of the elements in the two input arrays
#       if the value in the 1st input array is < the value in the 2nd input array,
#         add the value in the 1st input array to the output array and increment the ndx for the 1st array
#       else
#         add the value in the 2nd input array to the output array and increment the ndx for the 2nd array

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
  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
