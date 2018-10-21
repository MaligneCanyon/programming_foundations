# inputs:
# - string (2 strings)
# output:
# - string
# reqs:
# - take 2 strs as input
# - determine the longer str
# - concat and output the shorter, longer and shorter str
# rules:
# - none
# struct:
# - string
# algo:
# - determine the longer (and shorter) str
# - concat the strs in the specd order
# - rtn the concatd str

def short_long_short(str1, str2)
  if str1.size < str2.size
    sht_str = str1
    long_str = str2
  else
    sht_str = str2
    long_str = str1
  end
  sht_str + long_str + sht_str
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
