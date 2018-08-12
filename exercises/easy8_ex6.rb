# inputs:
# - int (starting num)
# - int (ending num)
# outputs:
# - printout string
# reqs:
# - print all nums between starting and ending nums (inclusive), except as per rules
# rules:
# - if num % 3 == 0 print "Fizz"
# - if num % 5 == 0 print "Buzz"
# datastruct:
# - string (for printing purposes)
# algo:
# - for each num between the starting and ending nums
# - if num % 3 == 0 print "Fizz" (no "\n")
# - if num % 5 == 0 print "Buzz"
# - else print num

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
