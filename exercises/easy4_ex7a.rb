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
  '9' => 9,
  'a' => 19,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15,
}


def hexadecimal_to_integer(str)
  arr = str.downcase.chars.reverse
  #p arr
  total = 0
  arr.each_with_index do |c, i|
    num = H[c]
    #p num
    total += num * 16**i
    #p total
  end
  total
end

p hexadecimal_to_integer('4D9f') == 19871
