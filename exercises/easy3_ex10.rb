# inputs:
# - integer
# outputs:
# - boolean
# reqs:
# - take an int as input
# - rtn T or F based on whether or not the int is a palindrome
# rules:
# - trailing zeros matter
# struct:
# - string
# algo:
# - convert the int to a str
# - rtn true if str == str.reverse
# - otherwise, rtn false

def palindrome?(str)
  str == str.reverse
end

def palindromic_number?(num)
  palindrome?(num.to_s)
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true
