def rotate_array(array)
  array[1..-1] + [array[0]]
end

# this doesn't work (drops leading zeros)
# def rotate_rightmost_digits(num, digits)
#   divisor = 10**digits
#   num1, num2 = num.divmod(divisor)
#   num1 * divisor + rotate_integer(num2)
# end

def rotate_rightmost_digits(num, digits)
  arr = num.to_s.chars # array of chars
  arr2 = arr[-digits..-1] # the last n elements of arr
  arr[-digits..-1] = rotate_array(arr2)
  arr.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
p rotate_rightmost_digits(102, 1) == 102
p rotate_rightmost_digits(102, 2) == 120
p rotate_rightmost_digits(102, 3) == 21
