def halvsies(arr)
  midpoint_ndx = (arr.size / 2.0).ceil
  #p midpoint_ndx
  [arr[0...midpoint_ndx], arr[midpoint_ndx..-1]]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
