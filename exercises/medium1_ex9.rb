# inputs:
# - Integer
# outputs:
# - Integer
# reqs:
# - compute the nth fib num w/o using recursion
# rules:
# - none
# struct:
# - Array (to hold fib nums)
# algo:
# - rtn 1 if n < 3
# - otherwise, for 3 thru n,
#   - add the last 2 fib nums to obtain the new fib num
#   - store the new fib num in the arr
# - rtn the last fib num

# def fibonacci(n)
#   fibs = [0, 1, 1]
#   return 1 if n < 3
#   (3..n).each do |num|
#     fib = fibs[num - 1] + fibs[num - 2]
#     fibs << fib
#   end
#   fibs.last
# end

# def fibonacci(n)
#   return 1 if n < 3
#   fib = 0
#   old = 1
#   older = 1
#   3.upto(n) do
#     fib = old + older
#     older = old
#     old = fib
#   end
#   fib
# end

def fibonacci(n)
  return 1 if n < 3
  older, old = [1, 1]
  3.upto(n) { older, old = [old, older + old] }
  old
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
# p fibonacci(100_001) # => 4202692702.....8285979669707537501
