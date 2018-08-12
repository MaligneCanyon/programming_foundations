# def multiply!(numbers, multiplier)
#   numbers.map! { |number| number * multiplier }
# end

# the old-fashioned way:
def multiply!(numbers, multplier)
  counter = 0
  loop do
    break if counter == numbers.size
    numbers[counter] *= multplier
    counter += 1
  end
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply!(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]
p my_numbers
