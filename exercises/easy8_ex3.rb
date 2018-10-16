# inputs:
# - String
# outputs:
# - Array (of substrs)
# reqs:
# - rtn a list of all substrs of a str starting at the 1st char of the str
# - substrs should be ordered from shortest to longest
# rules:
# - none
# struct:
# - Array
# algo:
# - init the output arr to []
# - for each char in the str
#   - copy the substr from the ndx == 0 to the current ndx to the output arr
# - rtn the output arr

def substrings_at_start(str)
  arr = []
  (0...str.size).each { |ndx| arr << str[0..ndx] }
  arr
end

# def substrings_at_start(str)
#   arr = []
#   (1..str.length).each { |i| arr << str.slice(0, i) }
#   arr
# end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
