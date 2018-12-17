# inputs:
# - array
# outputs:
# - array
# reqs:
# - take an array of ints 0..19
# - rtn an array of the same ints sorted based on the english words for each int
# rules:
# - none
# struct:
# - array (of english words)
# algo:
# - init an array of english words zero..nineteen
# - determine the subset of english words based on the input array size
# - sort the array subset based on english words
# - for each word
#   - determine the ndx of the word in the original array
#   - map the original array ndx in place of the english word
# - rtn the array

NUMBERS = %w(zero one two three four five six seven eight nine
  ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen
)

# def alphabetic_number_sort (arr)
#   english = NUMBERS[arr[0]...arr.size] # handles any subset 0...arr.size
#   english.sort.map { |word| english.find_index(word) }
# end

def alphabetic_number_sort (arr)
  arr.sort_by { |v| NUMBERS[v] }
end

# alt method:
# H = {
#   0 => 'zero',
#   1 => 'one',
#   2 => 'two',
#   3 => 'three',
#   4 => 'four',
#   5 => 'five',
#   6 => 'six',
#   7 => 'seven',
#   8 => 'eight',
#   9 => 'nine',
#   10 => 'ten',
#   11 => 'eleven',
#   12 => 'twelve',
#   13 => 'thirteen',
#   14 => 'fourteen',
#   15 => 'fifteen',
#   16 => 'sixteen',
#   17 => 'seventeen',
#   18 => 'eighteen',
#   19 => 'nineteen'
# }

# def alphabetic_number_sort (arr)
#   arr.map! {|v| H[v]}
#   arr.sort.map {|v| H.invert[v]}
# end

p alphabetic_number_sort((0..9).to_a)
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
