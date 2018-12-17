# - in the original implementation, nothing is done with the return value from
#   the 'decrease' method
# - use of the same var 'counter' within the method and the main program is an
#   example of var shadowing
# - the method does not mutate the obj counter pts to; rather, it reassigns
#   counter to pt to a new obj; thus the var is passed by value, and chgs made
#   w/i the method are not visible outside it

def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  # decrease(counter)
  counter = decrease(counter)
end

puts 'LAUNCH!'
