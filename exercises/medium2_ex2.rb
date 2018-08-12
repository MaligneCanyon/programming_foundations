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

p block_word?('BBB') == false # can't match more than 1 'B'
p block_word?('BATCH') == true
p block_word?('BUTCH') == false # can't match both 'U' and 'H'
p block_word?('jest') == true
