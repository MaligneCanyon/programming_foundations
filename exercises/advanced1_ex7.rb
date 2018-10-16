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
# - init a new arr to []
# - init an arr1 ndx to 0
# - init an arr2 ndx to 0
# - while arr1 ndx and arr2 ndx are less than their respective arr sizes
#   - if arr1 ndx is at the arr end, copy the arr2 elem to the new arr
#     - increment the arr2 ndx
#   - elsif arr2 ndx is at the arr end, copy the arr1 elem to the new arr
#     - increment the arr1 ndx
#   - else compare the elements from the two arrs
#     - copy the smaller elem to the new arr
#     - increment the ndx for the source arr for the smaller element
# - rtn the new arr

def merge(arr1, arr2)
  new_arr = []
  ndx1, ndx2 = 0, 0
  loop do
    break if ndx1 == arr1.size && ndx2 == arr2.size
    if ndx1 == arr1.size
      new_arr += arr2[ndx2...arr2.size]
      break
    elsif ndx2 == arr2.size
      new_arr += arr1[ndx1...arr1.size]
      break
    elsif arr1[ndx1] > arr2[ndx2]
      new_arr << arr2[ndx2]
      ndx2 += 1
    else
      new_arr << arr1[ndx1]
      ndx1 += 1
    end
  end
  # p new_arr
  new_arr
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
