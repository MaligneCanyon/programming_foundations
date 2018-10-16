# inputs:
# - integer (single int)
# outputs:
# - integer (square of input int)
# reqs:
# - take single int as input
# - mult the input by itself, using the multiply method from the previous ex
# - rtn the result
# rules:
# - none
# struct:
# - none
# algo:
# - take an int as input
# - call multiply with the int as both args
# - rtn the result

def multiply(a, b)
  a * b
end

def square(n)
  multiply(n, n)
end

p square(5) == 25
p square(-8) == 64
