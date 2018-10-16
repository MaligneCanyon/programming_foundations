# inputs:
# - Array (of Integers)
# outputs:
# - print out
# reqs:
# - take an arr of ints
# - multiply the ints together
# - divide by the number of ints
# - print the result rounded to 3 decimal places
# rules:
# - format output as follows
#   'The result is x.xxx'
# struct:
# - numeric
# - String (formatted output)
# algo:
# - reduce the array using multiplication
# - divide the result by the fp equiv of the array size
# - format the output str
# - print the output str

def show_multiplicative_average(arr)
  result = arr.reduce(:*) / arr.size.to_f
  p format('The result is %.3f', result)
end

# def show_multiplicative_average(arr)
#   result = 1
#   arr.each { |v| result *= v }
#   result /= arr.size.to_f
#   p sprintf("The result is %.3f", result)
# end

show_multiplicative_average([3, 5])
# The result is 7.500

show_multiplicative_average([6])
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
# The result is 28361.667
