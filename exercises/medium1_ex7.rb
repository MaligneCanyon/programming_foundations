# inputs:
# - str
# outputs:
# - str
# reqs:
# - replace any sequence of words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' w/
#   corresponding digits
# rules:
# - whole words only
# datastruct:
# - hash (word,digit pairs)
# - array (list of words)

NUMS = {
  'zero'  => 0,
  'one'   => 1,
  'two'   => 2,
  'three' => 3,
  'four'  => 4,
  'five'  => 5,
  'six'   => 6,
  'seven' => 7,
  'eight' => 8,
  'nine'  => 9
}

def word_to_digit(str)
  NUMS.keys.each { |key| str.gsub!(/\b#{key}\b/i, NUMS[key].to_s) }
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')
p word_to_digit('Please call me at five five five one two three four. Thanks.') ==
  'Please call me at 5 5 5 1 2 3 4. Thanks.'
