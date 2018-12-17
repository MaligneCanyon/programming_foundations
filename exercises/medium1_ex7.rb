# inputs:
# - str
# outputs:
# - str
# reqs:
# - replace any sequence of words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' w/
#   corresponding digits
# rules:
# - whole words only
# struct:
# - hash (word, digit pairs)
# - array (list of words)
# algo:
# - init a lookup table with acceptible numerical words and associated digits
# - split the input str into words
# - map the array as follows:
#   - if the word is an acceptible numerical word
#     - convert the word to a digit (using the lookup table)
#   - otherwise, use the existing word
# - join the arr elements to form the output str
# - rtn the output str

NUMS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9',
  'zero.'  => '0.',
  'one.'   => '1.',
  'two.'   => '2.',
  'three.' => '3.',
  'four.'  => '4.',
  'five.'  => '5.',
  'six.'   => '6.',
  'seven.' => '7.',
  'eight.' => '8.',
  'nine.'  => '9.'
}

def word_to_digit(str)
  str.split.map { |word| NUMS.has_key?(word) ? NUMS[word] : word }.join(' ')
end


# less awkward method:
# algo:
# - init a lookup table with acceptible numerical words and associated digits
# - for each key in the lookup table
#   - if the str contains the key, substitute the numerical value for the key
# - rtn the revised str

# NUMS = {
#   'zero'  => '0',
#   'one'   => '1',
#   'two'   => '2',
#   'three' => '3',
#   'four'  => '4',
#   'five'  => '5',
#   'six'   => '6',
#   'seven' => '7',
#   'eight' => '8',
#   'nine'  => '9'
# }

# def word_to_digit(str)
#   NUMS.keys.each { |key| str.gsub!(/\b#{key}\b/i, NUMS[key]) }
#   str
# end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
  'Please call me at 5 5 5 1 2 3 4. Thanks.'
