# input: str
# output: str
# reqs
# - str with 1st and last letters of each word swapped
# rules
# - only words and spaces

def swap(str)
  arr = str.split
  arr.map { |word| word[0], word[-1] = word[-1], word[0] }
  arr.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
