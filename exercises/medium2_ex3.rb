# inputs:
# - String
# outputs:
# - Hash
# reqs:
# - take a str
# - rtn a hash that contains 3 key:value pairs representing the % of
#   lowercase or uppercase letters, or other chars in the str
# rules:
# - one key:value pair for each char type
# struct:
# - Array (to hold str chars)
# algo:
# - init the output hash
# - split the str into individual chars
# - for each char
#   - increment the appropriate value for the type of char
# - for each hash element
#   - convert the value to a percentage of total chars
# - return the output hash

def letter_case_count(str)
  h = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |c|
    if c.between?('a', 'z')
      h[:lowercase] += 1
    elsif c.between?('A', 'Z')
      h[:uppercase] += 1
    else
      h[:neither] += 1
    end
  end
  h
end

# leverage easy7_ex2.rb
def letter_percentages(str)
  h = letter_case_count(str)
  h.each { |k, v| h[k] = v / str.size.to_f * 100 }
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
