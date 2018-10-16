# inputs:
# - String
# outputs:
# - String
# reqs:
# - swap the case of all letters in the input str and rtn the result
# rules:
# - none
# struct:
# - Array (to hold str chars)
# algo:
# - split the str into chars
# - for each char
#   - swap the char case
# - rtn the resulting str

# def swapcase(str)
#   arr = str.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   arr.join
# end

def swapcase(str)
  new_str = ''
  str.each_char { |c| new_str << ((c == c.upcase) ? c.downcase : c.upcase) }
  new_str
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
