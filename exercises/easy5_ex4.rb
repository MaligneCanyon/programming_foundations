# inputs:
# - string
# outputs:
# - string
# reqs:
# - take a str as input
# - rtn a str w/ the 1st and last letters of every word in the str swapped
# rules:
# - every word contains >= 1 letter
# - str contains >= 1 word
# - str contains only words and spaces
# struct:
# - array (to hold words)
# algo:
# - split the str into an array of words
# - for each word
#   - swap the 1st and last char
#   - map the new word to a new array
# - join the new array into a new str
# - rtn the new str

def swap(str)
  str.split.each { |word| word[0], word[-1] = word[-1], word[0] }.join(' ')
end

# def swap(str)
#   arr = str.split.map do |word|
#     word[0], word[-1] = word[-1], word[0]
#     word
#   end
#   arr.join(' ')
# end

p swap('abc def')
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
