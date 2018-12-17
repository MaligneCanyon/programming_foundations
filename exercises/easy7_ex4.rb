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
#   new_str = ''
#   str.each_char { |c| new_str << ((c == c.upcase) ? c.downcase : c.upcase) }
#   new_str
# end

# alt method:
# algo:
# - split the str into an arr of chars
# - for each char
#   - swap the char case
#   - map the char to the arr
# - join the arr chars to form a new str
# - rtn the new str

def swapcase(str)
  str.chars.map { |chr| chr == chr.upcase ? chr.downcase : chr.upcase }.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
