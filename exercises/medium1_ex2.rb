# inputs:
# - 2 Integers (num to rotate and the number of digits to rotate)
# outputs:
# - Integer (the rotated number)
# reqs:
# - rotate the last n digits of a num
# rules:
# - n is always a pos int
# struct:
# - Array
# algo:
# - convert the num to a str
# - split the str into an array of chars
# - call rotate_array on the latter portion of the arr, arr[-digits..-1]
# - add the rotated portion of the arr to the first part of the arr, arr[0...-digits]
# - join the array elements and convert the resulting str to an int
# - rtn the resulting int

def rotate_array(arr)
  arr[1...arr.size] + [arr[0]]
end

def rotate_rightmost_digits(num, digits)
  arr = num.to_s.split('')
  # arr = arr[0...-digits] + rotate_array(arr[-digits..-1])
  arr[-digits..-1] = rotate_array(arr[-digits..-1])
  arr.join.to_i
end

# this doesn't work (drops leading zeros):
# def rotate_rightmost_digits(num, digits)
#   divisor = 10**digits
#   num1, num2 = num.divmod(divisor)
#   num1 * divisor + rotate_integer(num2)
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(102, 1) == 102
p rotate_rightmost_digits(102, 2) == 120
p rotate_rightmost_digits(102, 3) == 21
