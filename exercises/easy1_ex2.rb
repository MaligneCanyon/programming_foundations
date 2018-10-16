# inputs:
# - Integer
# outputs:
# - Boolean
# reqs:
# - return T or F based on whether the input num abs value is odd
# rules:
# - any int value
# algo:
# - determine the value of the input num modulo 2
# - test whether the value is == 1
# - return the test result

def is_odd? (num)
  num % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true