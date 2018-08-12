# inputs:
# - String
# outputs:
# - T or F
# reqs:
# - take a str as single arg
# - return T or F depending on whether all parentheses is str are balanced
# rules:
# - each '(' must be followed at some pt by a ')'), ie.
#   - str.count('(') always >= str.count(')') while traversing the str
#   - str.count('(') always == str.count(')') after traversing the str
# datastruct:
# - Integer (count of ( and ) chars)
# algo:
# - for char in the str
#   - compute a running count of the number of (
#   - compute a running count of the number of )
#   - return F if number of ) > number of (
# - return T if number of ) == number of (, otherwise return F

def balanced?(str)
  count_open = 0
  count_close = 0
  str.each_char do |char|
    if char == '('
      count_open += 1
    elsif char == ')'
      count_close += 1
      return false if count_close > count_open
    end
  end
  count_close == count_open
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
