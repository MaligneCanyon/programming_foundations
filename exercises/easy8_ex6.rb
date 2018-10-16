# inputs:
# - int (starting num)
# - int (ending num)
# outputs:
# - printout string
# reqs:
# - print all nums between starting and ending nums (inclusive), except as per rules
# rules:
# - if num % 15 == 0 print "FizzBuzz"
# - if num % 3 == 0 print "Fizz"
# - if num % 5 == 0 print "Buzz"
# datastruct:
# - string (for printing purposes)
# algo:
# - from the starting to ending num (inclusive)
#   - printout either the current num or a msg (as per above rules)

def fizzbuzz(starting, ending)
  (starting..ending).each do |num|
    if (num % 15).zero?
      p "FizzBuzz"
    elsif (num % 3).zero?
      p "Fizz"
    elsif (num % 5).zero?
      p "Buzz"
    else
      p num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
