# input: str
# output: boolean
# reqs:
# - write a method that takes a string as argument
# - return true if all parentheses in the string are properly p balanced, false otherwise
# rules:
# - matching '(' and ')' pairs
# - p balanced pairs must each start with a '(', not a ')'
# datastruct: int
# algo:
# - init a counter at 0
# - iterate thru the str
#   - if a '(' is found, increment the counter
#   - if a ')' is found, increment the counter
#   - if the counter is ever < 0, return false
# - return true if the counter == 0, false otherwise

def balanced?(str)
  counter = 0
  str.each_char do |char|
    counter += 1 if char == '('
    counter -= 1 if char == ')'
    return false if counter < 0
  end
  counter == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
