# inputs:
# - String
# outputs:
# - String
# reqs:
# - return the input str with the letters reversed for words with 5 or more chars
# rules:
# - none
# struct:
# - Array (to hold a list of words in the str)
# algo:
# - split the str into an arr of words
# - map each word in the arr as follows
#   - if the word is longer than 4 chars
#     - reverse the word
#   - else
#     - use the existing word
# - join the arr elements (into a new str)
# - return the new str

def reverse_words(str)
  str.split.map { |word| word.size < 5 ? word : word.reverse }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
