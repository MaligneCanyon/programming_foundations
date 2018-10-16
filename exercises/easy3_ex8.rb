# - string
# outputs:
# - boolean
# reqs:
# - take a str as input
# - rtn T or F based on whether or not the str is a palindrome
# rules:
# - case, punctuation, spaces must match in reverse order
# struct:
# - string
# algo:
# - rtn true if str == str.reverse
# - otherwise, rtn false

def palindrome?(str)
  #p str.reverse, str
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true
