# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end


H = {
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


def string_to_integer(str)
  arr = str.chars.reverse
  #p arr
  total = 0
  arr.each_with_index do |c, i|
    num = H[c]
    #p num
    total += num * 10**i
    #p total
  end
  total
end


def string_to_signed_integer(string)
  if string[0] == '-'
    mult = -1
    ndx = 1
  elsif string[0] == '+'
    mult = 1
    ndx = 1
  else
    mult = 1
    ndx = 0
  end
  mult * string_to_integer(string[ndx..-1])
end


p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
