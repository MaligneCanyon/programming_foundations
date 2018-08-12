# inputs:
# - array
# outputs:
# - new array
# reqs:
# - move the 1st array element to the end of a copy of the array
# - return the new array
# rules:
# - none
# datastruct
# - array
# algo:
# - map the input array to a new array
# - remove the 1st element of the new array
# - append the 1st element to the end of the new array

# def rotate_array (arr)
#   new_arr = arr.map { |v| v }
#   element = new_arr.shift
#   new_arr.push(element)
#   # p new_arr
#   # new_arr
# end

def rotate_array(array)
  array[1..-1] + [array[0]]
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
