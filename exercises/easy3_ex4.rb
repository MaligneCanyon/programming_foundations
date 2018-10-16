# inputs:
# - integers (two ints)
# outputs:
# - integer (product of input ints)
# reqs:
# - take two ints as input
# - mult the inputs
# - rtn the result
# rules:
# - none
# struct:
# - none
# algo:
# - take two ints as input
# - mult the inputs
# - rtn the result

def multiply(a, b)
  a * b
end

p multiply(5, 3) == 15
p multiply([5,4,3,2,1], 3) == [15,12,9,6,3]
p multiply([5,4,3,2,1], 3) # ha,ha
p multiply(3, [5,4,3,2,1]) == [15,12,9,6,3] # ha, ha
