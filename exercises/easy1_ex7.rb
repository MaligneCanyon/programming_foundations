# inputs:
# - Integer (string length)
# outputs:
# - String (alternating series of 1s and 0s)
# reqs:
# - return a string of alternating 1s and 0s
# - string length is equal to the input int
# rules:
# - always start with 1
# struct:
# - String (build the output str)
# algo:
# - init the output string to null
# - for the input number of times do
#   - alternately add a 1 or 0 to the output string
# - return the output string

def stringy(num, option = 1)
  str = ''
  first_char = option.to_s
  second_char = (option == 1 ? '0' : '1')
  num.times { |ndx| str << (ndx.even? ? first_char : second_char) }
  str
end

puts stringy(6, 0) == '010101'
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
