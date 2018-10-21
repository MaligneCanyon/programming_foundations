# inputs:
# - signed integer
# outputs:
# - string
# reqs:
# - convert the signed input num to a str
# rules:
# - none
# struct:
# - str
# algo:
# - if the num is < 0, rtn '-' plus the result of calling the integer_to_string method on -num
# - elsif the num is > 0, rtn '+' plus the result of calling the integer_to_string method on num
# - otherwise, rtn '0'

HSH = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

def integer_to_string(num)
  hsh = HSH.invert
  str = ''
  loop do
    quotient, rem = num.divmod(10)
    str << hsh[rem]
    num = quotient
    break if num == 0
  end
  str.reverse
end

def signed_integer_to_string(num)
  if num < 0
    '-' + integer_to_string(-num)
  elsif num > 0
    '+' + integer_to_string(num)
  else
    '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
