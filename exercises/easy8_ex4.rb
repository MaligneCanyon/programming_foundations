# inputs:
# - String
# outputs:
# - Array (of substrs)
# reqs:
# - rtn a list of all substrs of a str
# - substrs should be ordered from shortest to longest and
#   and by where in the str the substr begins
# rules:
# - none
# struct:
# - Array
# algo:
# - init the output arr to []
# - for each char in the str
#   - call substrings_at_start
#   - copy the result to the output arr
# - flatten the output arr
# - rtn the output arr

def substrings_at_start(str)
  arr = []
  (0...str.size).each { |ndx| arr << str[0..ndx] }
  arr
end

def substrings(str)
  arr = []
  (0...str.size).each { |ndx| arr << substrings_at_start(str[ndx..-1]) }
  arr.flatten
end

# def substrings_at_start(str)
#   arr = []
#   (1..str.length).each { |i| arr << str.slice(0, i) }
#   arr
# end

# def substrings(str)
#   arr = []
#   (0...str.length).each { |i| arr << substrings_at_start(str.slice(i, str.length - i)) }
#   arr.flatten
# end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
