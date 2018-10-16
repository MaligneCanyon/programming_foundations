# inputs:
# - Array (of ints)
# outputs:
# - Integer (avg of input ints)
# reqs:
# - return the avg value of an array of ints
# rules:
# - return an int
# struct:
# - numeric
# algo:
# - sum the array elements
# - divide the sum by the array length
# - return the result (as an int)

def average (arr)
  #(arr.sum / arr.length).to_i
  (arr.reduce(:+) / arr.size).to_i
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
