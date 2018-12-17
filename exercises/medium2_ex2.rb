# inputs:
# - str
# outputs:
# - boolean
# reqs:
# - take a str as input
# - rtn T or F if the str can be spelt from the letters of a blk (k:v pairs of a hsh)
# rules:
# - 13 blks, 2 letters per blk, rep'd by a k:v pair in a hsh
# - each k:v pair (blk) can only be used once
# struct:
# - hsh (to hold the avail letters)
# algo:
# - init a hsh w/ the appropriate letters for k:v pairs
# - upcase the str
# - split the str into an arr of chars
# - for each char
#   - chk the hsh for the letter
#     - chk the keys
#     - chk the values
#   - if the letter is found in the hsh
#     - delete the k:v pair (it can only be used once)
#   - otherwise, rtn false
# - rtn true (if you get to the end of the str, all letters were found)


def block_word?(str)
  hsh = {
    'B' => 'O',
    'G' => 'T',
    'V' => 'I',
    'X' => 'K',
    'R' => 'E',
    'L' => 'Y',
    'D' => 'Q',
    'F' => 'S',
    'Z' => 'M',
    'C' => 'P',
    'J' => 'W',
    'N' => 'A',
    'H' => 'U'
  }

  str.upcase.chars.each do |char|
    if hsh.keys.include?(char)
      hsh.delete(char)
    elsif hsh.values.include?(char)
      hsh.delete(hsh.key(char))
    else
      return false
    end
    # p hsh
  end
  true
end

p block_word?('BBB') == false # can't match more than 1 'B'
p block_word?('BATCH') == true
p block_word?('BUTCH') == false # can't match both 'U' and 'H'
p block_word?('jest') == true
