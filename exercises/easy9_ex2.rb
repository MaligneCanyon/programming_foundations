# inputs:
# - Integer
# outputs:
# - Integer
# reqs:
# - take an int arg
# - rtn the num if it is a dble num
# - rtn the num * 2 otherwise
# struct:
# - String (for comparing halves of the input int)
# algo:
# - determine whether the input num is a dble num
#   - dble num if
#     - str = num.to_s
#     - str.size.even?
#     - str[0...str.size/2] == str[str.size/2...str.size]
# - rtn the num if it is a dble num
# - rtn the num * 2 otherwise

def dble_num?(num)
  str = num.to_s
  str.size.even? && (str[0...str.size/2] == str[str.size/2...str.size])
end

def twice(num)
  dble_num?(num) ? num : num * 2
end

# ALT VERSION
# def twice(num) # no strings attached
#   num_digits = num.to_s.size
#   quotient, remainder = num.divmod(10**(num_digits / 2))
#   num_digits.even? && quotient == remainder ? num : num * 2
#   # actually, don't need to check num_digits.even?
# end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
