# inputs:
# - integer (num of ints to sum)
# outputs:
# - integer (the sum dif)
# reqs:
# - compute the dif btwn the square of the sums of the first n positive ints
#   and the sum of the squares of the first n positive ints
# - rtn the dif
# rules:
# - none
# struct:
# - numeric
# algo:
# - for the specd num of pos ints
# - calc the square of the sum of the ints
# - calc the sum of the squares of the ints
# - calc the dif btwn the two values
# - rtn the result

def sum_square_difference(num)
  # square_of_sum = (1..num).reduce(:+) ** 2
  # sum_of_squares = (1..num).reduce { |sum, n| sum + n * n }
  # square_of_sum - sum_of_squares

  (1..num).reduce(:+)**2 - (1..num).reduce { |sum, n| sum + n * n }
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
