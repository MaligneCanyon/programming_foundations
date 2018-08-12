# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# p factors(4) # ok
# p factors(0) # error
# p factors(-1) # infinite loop

def factors(number)
  dividend = number
  divisors = []
  until dividend <= 0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

p factors(4)
p factors(0)
p factors(-1)

# 'number % dividend == 0' ensures that the divisor divides evenly into the
# number, ie. there is no remainder
# the second-to-last line in the method is the (implicit) return value
