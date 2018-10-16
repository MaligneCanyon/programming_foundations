# inputs:
# - string
# outputs:
# - string
# reqs:
# - return the input string with all chars dbld
# rules:
# - none
# datastruct:
# - array (access to 'map' method)
# algo:
# - split the input str into chars
# - for each char in the array
#   - map the char 2 times back into the array
# - join the array chars into a new str
# - output the new str

def repeater(str)
  str.chars.map { |char| char * 2 }.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
