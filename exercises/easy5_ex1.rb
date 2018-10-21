# inputs:
# - string
# outputs:
# - int
# reqs:
# - take a str as input
# - rtn the ascii str value
# rules:
# - ascii str value == sum of all ascii chars in the str
# struct:
# - array (to hold str chars)
# algo:
# - init a sum to 0
# - break the str into an arr of chars
# - for each char
#   - compute the ascii value
#   - add the value to the sum
# - rtn the sum

def ascii_value(str)
  sum = 0
  arr = str.chars
  arr.each do |char|
    sum += char.ord
  end
  sum
end

# def ascii_value(str)
#   if str == ''
#     0
#   else
#     arr = str.chars
#     arr.map! { |c| c.ord }
#     #p arr
#     arr.reduce(:+)
#   end
# end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0
char = 'a'
p char.ord.chr == char
