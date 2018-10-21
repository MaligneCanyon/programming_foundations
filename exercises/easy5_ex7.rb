# inputs:
# - string
# outputs:
# - hash
# reqs:
# - take a space-sepd str as input
# - rtn a hash listing the number of words of different sizes
#   - store the result w/ format: length => #words
# rules:
# - str w/ >=1 word
# - words are any substr not including a space
# - exclude non-letters
# struct:
# - array (to hold words)
# algo:
# - init a hash to {}
# - split the str into words
# - for each word
#   - calc the word size (exclude non-letters)
#   - create a key for that word size
#   - if the key does not exist, add the key to the hash (with value 1)
#   - if the key does exist, increment the value for that key
# - rtn the hash

def word_sizes(str)
  hsh = {}
  arr = str.split
  arr.each do |word|
    # my_key = word.gsub(/[^a-z]/i, '').size # del non-alpha chars
    my_key = word.scan(/[a-z]/i).size
    if hsh.key?(my_key)
      hsh[my_key] += 1
    else
      hsh[my_key] = 1
    end
  end
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}
