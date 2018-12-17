# inputs:
# - Array
# outputs:
# - Array (nested, with 2 subarrays)
# reqs:
# - split an array into 2 subarrays
# - return the subarrays as a nested array
# rules:
# - if the array contains an odd number of elements, the mid elements
#   should be placed in the 1st subarray
#   - [0,1,2,3,4] -> [[0,1,2], [3,4]]
#   - [0,1,2,3]   -> [[0,1],   [3,4]]
# struct:
# - Array
# algo:
# - calc the array midpoint
# - for each array element
#   - for elements upto and including the midpoint,
#     - place the element in the 1st subarray
#   - for remaining elements,
#     - place the element in the 2nd subarray
# - return the nested array

# def halvsies(arr)
#   new_arr = [[], []]
#   midpoint = arr.size / 2
#   midpoint += 1 if arr.size.odd?
#   arr.each_with_index do |elem, ndx|
#     if ndx < midpoint
#       new_arr[0] << elem
#     else
#       new_arr[1] << elem
#     end
#   end
#   new_arr
# end

# def halvsies(arr)
#   #midpoint_ndx = (arr.size / 2.0).ceil # fp rounding errors ?
#   midpoint_ndx = arr.size / 2
#   midpoint_ndx += 1 if arr.size.odd?
#   [arr[0...midpoint_ndx], arr[midpoint_ndx..-1]]
# end

def halvsies(arr)
  midpt = (arr.size - 1) / 2
  arr.partition { |v| arr.find_index(v) <= midpt }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
