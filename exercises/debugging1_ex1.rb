# in the original implementation, nothing is done with the return value from
# the 'decrease' method (use of the same var name within the method and the
# main program is awkward at best)
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
