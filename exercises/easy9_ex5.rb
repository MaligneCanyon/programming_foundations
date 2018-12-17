# inputs:
# - String
# outputs:
# - String
# reqs:
# - take a str arg
# - rtn T or F depending on whether all alphabetic chars in the str are uppercase
# rules:
# - none
# struct:
# - n/r
# algo:
# - test whether
#   str == str.upcase

def uppercase?(str)
  str.upcase == str
  # str.chars.all? {|char| char == char.upcase}
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
