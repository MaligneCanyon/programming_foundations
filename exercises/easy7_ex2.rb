# inputs:
# - String
# outputs:
# - Hash
# reqs:
# - take a str
# - rtn a hash that contains 3 key:value pairs representing the num of
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
# - return the output hash


def letter_case_count(str)
  h = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |c|
    if c.between?('a', 'z')
    # if char =~ /[a-z]/
      h[:lowercase] += 1
    elsif c.between?('A', 'Z')
    # elsif char =~ /[A-Z]/
      h[:uppercase] += 1
    else
      h[:neither] += 1
    end
  end
  h
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
