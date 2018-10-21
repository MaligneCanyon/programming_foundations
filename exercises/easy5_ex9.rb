# inputs:
# - string
# outputs:
# - string
# reqs:
# - take a str
# - rtn a new str w/ all consecutive duplicate chars collapsed into a single char
# rules:
# - none
# struct:
# - array (to hold str chars)
# algo:
# - init an array to hold the 1st str char
# - split the str into an array of chars
# - for each char in the array
#   - select and store the char in a new array if it is dif than the previous char
# - join the new array elements to form a new str
# - rtn the new str

def crunch(str)
  new_arr = [str[0]]
  arr = str.chars
  arr.each_with_index do |char, ndx|
    next if ndx == 0
    new_arr << char unless char == arr[ndx - 1]
  end
  new_arr.join
end

p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
