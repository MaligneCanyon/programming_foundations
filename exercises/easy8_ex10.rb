# inputs:
# - String
# outputs:
# - String (the middle char(s) of the input str)
# reqs:
# - rtn the middle char(s) of the input str
# rules:
# - if str size is odd, rtn one char
#   xxxoxxx
# - else rtn two chars
#   xxooxx
# struct:
# - String
# algo:
# - determine the string midpoint
#   - midpoint = str.size / 2
# - rtn the midpoint char(s)
#   - str[midpoint] if str.size.odd?
#   - str[midpoint-1..midpoint] otherwise

def center_of(str)
  mid = str.size / 2
  str.size.odd? ? str[mid] : str[mid - 1..mid]
end

p center_of('the Universe')
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
