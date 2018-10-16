# inputs:
# - String
# outputs:
# - String
# reqs:
# - alternate the case of letters in the input str and rtn the result
# rules:
# - chars that are not letters should not be changed
# - 1st char in str should be uppercase
# struct:
# - Array (to hold str chars)
# algo:
# - split the str into chars
# - for each char
#   - alternately set the char case to upper / lower
# - rtn the resulting str

def staggered_case(str)
  str.chars.map.with_index { |c, i| i.even? ? c.upcase : c.downcase }.join
end

# def staggered_case(str)
#   new_str = ''
#   str.chars.each_with_index { |c, i| new_str << (i.even? ? c.upcase : c.downcase) }
#   new_str
# end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
