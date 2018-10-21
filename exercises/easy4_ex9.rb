# inputs:
# - integer
# outputs:
# - string
# reqs:
# - convert the input num to a str
# rules:
# - the input num will be >= 0
# struct:
# - str
# algo:
# - init a str to ''
# - while the num is > 0
#   - divide the num by 10
#   - use a hash to lookup the char for the remainder of the div op
#   - add the char to the str
#   - assign the quotient from the div op to the num
# - reverse the str
# - rtn the result

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

# def integer_to_string(num)
#   if num == 0
#     str = '0'
#   else
#     hsh = HSH.invert
#     str = ''
#     while num > 0
#       str << hsh[num % 10]
#       num /= 10
#     end
#     str.reverse
#   end
# end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
