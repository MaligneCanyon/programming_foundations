# inputs:
# - integer
# output:
# - string
# reqs:
# - take an int (a year) as input
# - determine the century for the year
# - determine a suffix for the century
# - output the century with the corresponding suffix
# rules:
# - new centuries begin in years ending in 01
#   - years 01 thru 00 rep a century
# - suffixes are st, nd, rd, th
# - century_num ending in nn has suffix xx
#   nn xx
#   00 th
#   01 st
#   02 nd
#   03 rd
#   04-20 th
#   21 st
#   22 nd
#   23 rd
#   24-30 th
#   etc
# struct:
# - numeric
# algo:
# - create a hsh w/ century_nums and appropriate suffixes
# - determine the century number
#   - century_num = (year - 1) / 100 + 1
# - determine the appropriate suffix
# - convert the century number to a str and concat the suffix to it
# - rtn the concatd str

def century(year)
  h = Hash.new('th') # 'th' is default suffix; teen centuries plus centuries ending in 0, 4-9
  h[1] = 'st'
  h[2] = 'nd'
  h[3] = 'rd'
  century_num = (year - 1) / 100 + 1
  suffix = ((century_num % 100) / 10) == 1 ? 'th' : h[century_num % 10] # teens : others
  century_num.to_s + suffix
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'
