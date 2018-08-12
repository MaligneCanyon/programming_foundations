def substrings_at_start(str)
  arr = []
  (1..str.length).each { |i| arr << str.slice(0, i) }
  arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
