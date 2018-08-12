# def fibonacci(nth)
#   return 1 if nth < 3
#   fib = 0
#   old = 1
#   older = 1
#   3.upto(nth) do
#     fib = old + older
#     older = old
#     old = fib
#   end
#   fib
# end

def fibonacci(nth)
  return 1 if nth < 3
  older, old = [1, 1]
  3.upto(nth) do
    older, old = [old, older + old]
  end
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
p fibonacci(100_001) # => 4202692702.....8285979669707537501
