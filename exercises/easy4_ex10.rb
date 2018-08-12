H = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}


def signed_integer_to_string(num)
  if num == 0
    str = '0'
  else
    str = ''
    sign = num < 0 ? '-' : '+'
    num = num.abs
    while num > 0
      str << H[num % 10]
      num /= 10
    end
    str << sign
    str.reverse!
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
