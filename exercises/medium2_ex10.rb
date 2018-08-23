def sum_square_difference(num)
  (1..num).reduce(:+)**2 - (1..num).reduce { |sum, n| sum + n * n }
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
