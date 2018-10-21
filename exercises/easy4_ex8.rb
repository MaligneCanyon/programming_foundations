# inputs:
# - string
# outputs:
# - integer
# reqs:
# - convert the input str to an int
# rules:
# - the input str may have a leading + or - sign
# - otherwise, assume all input chars are numeric
# struct:
# - array (to hold str chars)
# - numeric (to hold a running total of the numeric value of the chars)
# algo:
# - init a total to 0
# - reverse the str and convert it to an arr of chars
# - for each char
#   - use a hash to lookup the number for each numeric char
#   - compute the numeric value for each number based on the arr ndx
#   - add the numeric value to the total
# - if the 1st char of the str is a - sign
#   - rtn the total * -1
# - otherwise
#   - rtn the total

HSH = {
  '+' => 0,
  '-' => 0,
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

def string_to_signed_integer(str)
  total = 0
  arr = str.reverse.chars
  arr.each_with_index { |char, ndx| total += HSH[char] * 10**ndx }
  str[0] == '-' ? -total : total
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
