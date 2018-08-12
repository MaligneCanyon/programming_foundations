# input: str
# output: str
# reqs
# - str with 1st and last letters of each word swapped
# rules
# - only words and spaces


def swap(str)
  arr = str.split
  #p arr
  arr.map! do |word|
    subarr = word.chars
    #p subarr
    subarr[0], subarr[-1] = subarr[-1], subarr[0]
    #p subarr
    subarr.join
  end
  arr.join(" ")
end


p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
