# inputs:
# - string (2 strings)
# output:
# - string
# reqs:
# - rtn the short+long+short str
# rules:
# - none
# struct:
# - array
# algo:
# - determine the short and long str
#   - place the strs in an arr
#   - sort the arr by str length
# - rtn the short+long+short str

def short_long_short(str1, str2)
  short, long = [str1, str2].sort_by(&:length)
  short+long+short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
