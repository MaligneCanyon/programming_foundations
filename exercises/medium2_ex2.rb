def block_word?(str)
  hsh = {
    B:'O',   X:'K',   D:'Q',   C:'P',   N:'A',
    G:'T',   R:'E',   F:'S',   J:'W',   H:'U',
    V:'I',   L:'Y',   Z:'M'
  }
  str2 = ''
  str.each_char do |char|
    hsh.each do |k, v|
      if v # neither of the block's letters have been used yet
        if char.upcase == k.to_s # the str char matches the hash key
          str2 << k.to_s
          hsh[k] = nil
        elsif char.upcase == v # the str char matches the hash value
          str2 << v
          hsh[k] = nil
        end
      end
    end
    # p hsh
  end
  # p "str2 == #{str2}"
  str.upcase == str2
end

# ALT
# inputs:
# - String (a word to spell)
# outputs:
# - Boolean (T or F that the word can be spelt)
# reqs:
# - accept a str (word) arg
# - rtn T or F if the arg can be spelt from the letters on a blk
# rules:
# - 13 blks, 2 letters per blk
# - each key:value pair (blk) can only be used once
# algo:
# - init a hash containing the blk letters as key:value pairs (one per blk)
# - for each letter of the input word
#   - for each hash element
#     - if the hash key or hash value contains the letter
#       - delete the hash key:value pair
#   - if the letter wasn't found
#     - return false
# - return true (end of word reached)

# def block_word?(str)
#   hash = {
#       B:'O',   X:'K',   D:'Q',   C:'P',   N:'A',
#       G:'T',   R:'E',   F:'S',   J:'W',   H:'U',
#       V:'I',   L:'Y',   Z:'M'
#   }
#   str.chars.each do |char|
#     found = false
#     hash.each do |k, v|
#       if k.to_s == char.upcase || v == char.upcase
#         hash.delete(k)
#         found = true
#         break
#       end
#     end
#     return false unless found
#   end
#   true
# end

p block_word?('BBB') == false # can't match more than 1 'B'
p block_word?('BATCH') == true
p block_word?('BUTCH') == false # can't match both 'U' and 'H'
p block_word?('jest') == true
