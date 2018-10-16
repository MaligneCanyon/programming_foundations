# inputs:
# - String
# outputs:
# - String
# reqs:
# - take a single str
# - rtn a new str w/ the 1st char of every word capitalized and all other letters lowercase
# rules:
# - none
# struct:
# - String
# algo:
# - split the str into words
# - for each word
#   - call the capitalize method on the word
# - join the words to form the output str
# - rtn the output str

def word_cap(str)
  # arr = str.split.map do |word|
  #   word.capitalize
  # end
  # arr.join(' ')
  str.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
