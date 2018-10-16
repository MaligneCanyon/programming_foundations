# inputs:
# - array
# outputs:
# - array
# reqs:
# - take an arr as input
# - rtn another arr containing the elements at even numbered indices in the input arr
# rules:
# - odd elements == elements at even numbered indices
# struct:
# - array
# algo:
# - take an arr input
# - init a 2nd arr to []
# - copy elements in the input arr at an even numbered ndx to the 2nd arr
# - rtn the 2nd arr

def oddities(arr)
  arr2 = []
  arr.each_with_index { |elem, ndx| arr2 << elem if ndx.even? }
  arr2
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
