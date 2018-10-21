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
# struct:
# - array (to hold words)
# algo:
# - init a hash to {}
# - split the str into words
# - for each word
#   - create a key for that word size
#   - if the key does not exist, add the key to the hash (with value 1)
#   - if the key does exist, increment the value for that key
# - rtn the hash

def word_sizes(str)
  hsh = {}
  arr = str.split
  arr.each do |word|
    my_key = word.size
    if hsh.key?(my_key)
      hsh[my_key] += 1
    else
      hsh[my_key] = 1
    end
  end
  hsh
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
