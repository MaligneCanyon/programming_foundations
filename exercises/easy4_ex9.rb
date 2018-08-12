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


def integer_to_string(num)
  if num == 0
    str = '0'
  else
    str = ''
    while num > 0
      str << H[num % 10]
      num /= 10
    end
    str.reverse!
  end
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
