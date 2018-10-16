# - Integer
# outputs:
# - Integer
# reqs:
# - take a positive int
# - rtn the int w/ its digits reversed
# rules:
# - ok to drop trailing zeros
# struct:
# - String (allows reverse nethod)
# algo:
# - convert the int to a str
# - reverse the str
# - convert the str to an int
# - output the int

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1
