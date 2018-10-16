# inputs:
# - String
# outputs:
# - Array (of substrs)
# reqs:
# - rtn a list of all palindromic substrs of a str
# - substrs should be ordered by where in the str the substr begins
# rules:
# - single char strs are not palindromes
# struct:
# - Array
# algo:
# - init the output arr to []
# - call substrings
# - select substrings from the resulting arr that are palindromic
#   - select if substr == substr.reverse && substr.size > 1
# - rtn the resulting arr

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

def palindrome?(str)
  str.reverse == str && str.size > 1
end

def palindromes(str)
  substrings(str).select { |substr| palindrome?(substr) }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
