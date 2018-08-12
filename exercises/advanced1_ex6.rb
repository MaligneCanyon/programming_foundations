def my_method(array)
  if array.empty?
    []
  # elsif
  #   array.map do |value|
  #     value * value
  #   end
  else
    [7 * array.first]
  end
end

p my_method([]) ==
[]
p my_method([3]) ==
[21]
p my_method([3, 4]) ==
[9, 16]
p my_method([5, 6, 7]) ==
[25, 36, 49]

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# if we comment out the code for the elsif condition, we find that the code for the else condition executes properly
# (an array containing 7x the first array element is printed)

# the code
  # elsif
  #   array.map do |value|
  #     value * value
  #   end
# evaluates to nil because there is no condition specified

# R thinks that the array.map call and its blk are the condition, which always evaluates to T, so the elsif always
# executes; since there's no apparent code after the presumed condition, the elsif always returns nil
