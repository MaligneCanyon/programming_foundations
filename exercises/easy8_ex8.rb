# inputs:
# - string
# outputs:
# - string
# reqs:
# - return the input string with all consonant chars dbld
# rules:
# - none
# datastruct:
# - array (access to 'map' method)
# algo:
# - split the input str into chars
# - for each char in the array
#   - map the char into the array
#   - 2 times if the char is a consonant
#   - 1 time otherwisse
# - join the array chars into a new str
# - output the new str

# def double_consonants(str)
#   str.chars.map { |c| c =~ /[bcdfghjklmnpqrstvwxyz]/i ? c * 2 : c }.join
# end

def double_consonants(str)
  dble_chars = 'bcdfghjklmnpqrstvwxyz'
  str.chars.map { |chr| dble_chars.include?(chr.downcase) ? chr * 2 : chr }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
