# inputs:
# - string
# outputs:
# - boolean
# reqs:
# - take a str as input
# - rtn T or F based on whether or not the str is a palindrome
# rules:
# - case, punctuation, spaces do not matter
# - ignore all non-alphanumeric chars
# struct:
# - string
# algo:
# - convert the str to uppercase
# - delete all non-alphanumeric chars from the str
# - for the remaining chars,
#   - rtn true if str == str.reverse
#   - otherwise, rtn false

def palindrome?(str)
  str == str.reverse
end

def real_palindrome?(str)
  str.upcase! # can't successfully chain this w/ delete! method
  str.delete! "^A-Z" "^0-9"
  palindrome?(str)
end

# def real_palindrome?(str)
#   # alphanums = ('A'..'Z').to_a + ('0'..'9').to_a
#   # arr = str.upcase.chars.select { |char| alphanums.include?(char) }
#   arr = str.upcase.chars.select { |char| /[a-z0-9]/i =~ char }
#   palindrome?(arr.join)
# end

# def real_palindrome?(str)
#   str.downcase!
#   new_str = ''
#   str.each_char do |c|
#     new_str << c if c.between?('a','z') || c.between?('0','9')
#   end
#   new_str.reverse == new_str
# end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
