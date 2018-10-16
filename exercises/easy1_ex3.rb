# inputs:
# - positive Integer
# outputs:
# - Array of digits in the input int
# reqs:
# - return a list (array) of the digits in the input number
# rules:
# - none
# struct:
# - Array
# algo:
# - convert the input num to a string
# - for each char in the str,
#   - map the char to an int in the output arr
# - return the output arr

def digit_list (num)
  #num.to_s.split("").map { |char| char.to_i } # works ok
  #num.to_s.split("").map(&:to_i) # better, (&:to_i) equiv to { |char| char.to_i }
  num.to_s.chars.map(&:to_i) # so str.chars equiv to str.split("")
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# '> gem env' lists the Gem install dir
