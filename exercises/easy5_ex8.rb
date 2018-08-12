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


NUMBERS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine',
  'ten', 'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen'
]

def alphabetic_number_sort (arr)
  arr.sort_by { |v| NUMBERS[v] }
end


p alphabetic_number_sort((0..9).to_a)
p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

# no need to use 'sort_by!' since the return value is already produced by 'sort_by'
# i.e. we don't need to retain the value of the sort for further use w/i our method
