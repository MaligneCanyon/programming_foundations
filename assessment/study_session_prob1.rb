# inputs:
# - num
# outputs:
# - num
# reqs:
# - square every digit of a num
# - rtn the num
# rules:
# questions:
# struct:
# - str
# - arr
# algo:
# - convert the num to a str
# - split the str into an arr of chars
# - for each char
#   - map the char as follows
#     - convert the char to an int
#     - square the int
#     - convert the int to a char
# - join the arr of chars to form a new str
# - convert the str to an int
# - rtn the int

def square_digits(num)
  # arr = num.to_s.chars.map do |char|
  #   int = char.to_i
  #   int = int ** 2
  #   int.to_s
  # end
  # arr.join.to_i

  num.to_s.chars.map { |char| (char.to_i ** 2).to_s }.join.to_i
end

p square_digits(0) ==    0
p square_digits(64) ==   3616
p square_digits(1111) == 1111
p square_digits(2222) == 4444
p square_digits(3333) == 9999
p square_digits(3212) == 9414
p square_digits(1234) == 14916
p square_digits(77455754) == 4949162525492516
p square_digits(99999999) == 8181818181818181
