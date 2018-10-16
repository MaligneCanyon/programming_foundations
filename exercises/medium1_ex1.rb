# inputs:
# - Array
# outputs:
# - Array
# reqs:
# - move the 1st element to the end of the arr
# - the original arr should not be modified
# rules:
# - none
# struct:
# - Array
# algo:
# - return arr[1...arr.size] + [arr[0]]

def rotate_array(arr)
  arr[1...arr.size] + [arr[0]]
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

def rotate_integer(num)
  rotate_string(num.to_s).to_i
end

puts 'arrays:'
puts rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
puts rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
puts rotate_array(['a']) == ['a']
x = [1, 2, 3, 4]
puts rotate_array(x) == [2, 3, 4, 1]   # => true
puts x == [1, 2, 3, 4]                 # => true

puts 'strings:'
puts rotate_string('funny string')
puts rotate_string('735291') == '352917'

puts 'ints:'
puts rotate_integer(735291) == 352917
puts rotate_integer(12) == 21
puts rotate_integer(7) == 7
