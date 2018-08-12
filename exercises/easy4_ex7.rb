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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
