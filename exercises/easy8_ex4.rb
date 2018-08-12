def substrings_at_start(str)
  arr = []
  (1..str.length).each { |i| arr << str.slice(0, i) }
  arr
end

def substrings(str)
  arr = []
  (0...str.length).each { |i| arr << substrings_at_start(str.slice(i, str.length - i)) }
  arr.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
