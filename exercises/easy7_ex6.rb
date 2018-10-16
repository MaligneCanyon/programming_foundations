# inputs:
# - String
# outputs:
# - String
# reqs:
# - alternate the case of letters in the input str and rtn the result
# rules:
# - chars that are not letters should not be changed
# - 1st char in str should be uppercase
# - ignore non-alphabetic chars
# struct:
# - Array (to hold str chars)
# algo:
# - init a counter to 0
# - split the str into chars
# - map each char
#   - if the char is alphabetic
#     - alternately set the char case to upper / lower
#       - alternate based on whether counter value is odd / even
#     - increment the counter
#   - else
#     - use the existing char
# - join the chars to form the output str
# - rtn the resulting str

def staggered_case(str)
  counter = 0
  arr = str.chars.map do |c|
    if c =~ /[a-z]/i # if char is alphabetic
      counter.even? ? c.upcase! : c.downcase!
      counter += 1
    end
    c
  end
  arr.join
end

# def staggered_case(str)
#   arr = str.chars
#   counter = 0
#   arr.map! do |c|
#     counter += 1 if c.between?('a','z') || c.between?('A','Z')
#     c = (counter.odd? ? c.upcase : c.downcase)
#   end
#   arr.join
# end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
