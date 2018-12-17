# inputs:
# - string
# outputs:
# - array
# reqs:
# - return an array containing every word from the string
# - append a space and word length to each word
# rules:
# - none
# datastruct:
# - array
# algo:
# - slipt the input string into individual words and store them in an array
# - for each array element, append a space and the element length

def word_lengths(str)
  str.split.map {|word| word + ' ' + word.size.to_s }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []
