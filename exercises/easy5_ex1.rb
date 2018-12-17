# inputs:
# - string
# outputs:
# - integer
# reqs:
# - rtn the sum of the ascii char values from a str
# rules:
# - ascii str value == sum of all ascii chars in the str
# struct:
# - array (to hold str chars)
# algo:
# - split the str into an arr of chars
# - for each char
#   - map the ascii value of the char
# - sum the values in the mapped arr
# - rtn the sum

def ascii_value(str)
  str.chars.map(&:ord).sum
end

# def ascii_value(str)
#   sum = 0
#   arr = str.chars
#   arr.each do |char|
#     sum += char.ord
#   end
#   sum
# end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
char = 'a'
p char.ord.chr == char
