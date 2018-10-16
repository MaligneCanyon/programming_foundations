# inputs:
# - Integer (presumed)
# outputs:
# - Integer
# reqs:
# - rtn the neg of the input num if the num is > 0, otherwise rtn the num
# rules:
# - none
# struct:
# - Integer
# algo:
# - rtn -num if num > 0
# - rtn num otherwise

def negative(num)
  num.positive? ? -num : num
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
