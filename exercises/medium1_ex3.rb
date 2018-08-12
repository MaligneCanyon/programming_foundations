def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, digits)
  arr = num.to_s.chars # array of chars
  arr2 = arr[-digits..-1] # the last n elements of arr
  arr[-digits..-1] = rotate_array(arr2)
  arr.join.to_i
end

def max_rotation(num)
  digits = num.to_s.size
  digits.downto(2) { |i| num = rotate_rightmost_digits(num, i) }
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
