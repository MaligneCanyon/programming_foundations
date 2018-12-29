# inputs:
# - str
# outputs:
# - str
# reqs:
# - find the highest scoring word in a str
#   - add value of each char in the word based on char position in the alphabet
#   - find the max value for the words
# - rtn the word with max value
# rules:
# - letter score is based on position in alphabet
#   - a == 1, b == 2, ...
# struct:
# - arr
# algo:
# - create an arr of alpha_chars
# - init max_score to 0
# - init max_word to ''
# - split the str into an arr of words
# - for each word in the arr
#   - split the word into an sub_arr of chars
#   - for each char in the sub_arr
#     - compare each char to the arr of alpha_chars
#     - determine the score for each char
#       - char_score = alpha_chars.index(char) + 1
#     - map the char_score back to the sub_arr
#   - sum the sub_arr values to determine word_score
#   - if word_score > max_score
#     - set max_score to the current word_score
#     - set max_word to the current word
# - rtn the max_word

def alphabet_score(str)
  alpha_chars = ('a'..'z').to_a
  max_score = 0
  max_word = ''
  arr = str.split(' ')
  arr.each do |word|
    word_score = word.chars.map { |char| alpha_chars.index(char) + 1 }.sum
    if word_score > max_score
      max_score = word_score
      max_word = word
    end
  end
  max_word
end

p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'
