# input: str
# output: hash
# reqs:
#   - str w/ >=1 word
#   - count the number of words of each length
#   - store the result in a hash w/ format: length => #words
# rules:
#   - words are any substr not including a space


def word_sizes (str)
  arr = str.split(' ')
  h = {}
  arr.each do |word|
    if h.has_key?(word.size)
      h[word.size] += 1
    else
      h[word.size] = 1
    end
  end
  h
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
