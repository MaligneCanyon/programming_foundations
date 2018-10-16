# inputs:
# - Integer
# outputs:
# - Integer
# reqs:
# - return the sum of the digits of the input (positive) int
# algo:
# - convert the input to a str
# - split the string into an array of digits
# - sum the elements of the array
# - return the sum

def sum (num)
  num.to_s.split('').map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
