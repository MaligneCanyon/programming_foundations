# inputs:
# - two unspecified args
# outputs:
# - boolean (result of xor test)
# reqs:
# - take two args as input
# - perform an xor test on the inputs
# - rtn the result
# rules:
# - four possibilities
#   a == truthy, b == truthy  => rtn false
#   a == truthy, b == falsey  => rtn true
#   a == falsey, b == truthy  => rtn true
#   a == falsey, b == falsey  => rtn false
# struct:
# - none
# algo:
# - take two ints as input
# - return true if a && !b || b && !a
# - otherwise, return false

def xor?(a, b)
  a && !b || b && !a
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false
p xor?(5, 4) == false # both '5' and '4' are truthy values
p xor?(5, 5) == false
