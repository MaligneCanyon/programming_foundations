# inputs:
# - Integer
# outputs:
# - Integer
# reqs:
# - comp the last digit of the nth fib num
# rules:
# - only the last digit is of consequence
# algo:
# - rtn 1 if n < 3
# - init an arr to [1, 1]
# - for 3 upto n
#   - simultaneously
#     - set the 2nd last arr element equal to the last element
#     - set the last arr element equal to (the 2nd last plus the last element) modulus 10
# - rtn the last arr element

def fibonacci_last(nth)
  return 1 if nth < 3
  older, old = [1, 1]
  3.upto(nth) do
    older, old = [old, (older + old) % 10] # only need the last digit
  end
  old
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4
