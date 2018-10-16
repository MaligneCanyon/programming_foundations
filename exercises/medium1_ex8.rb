# inputs:
# - Integer (the nth Fib number index)
# outputs:
# - Integer (the nth Fib number)
# reqs:
# - compute the nth Fib number
# rules:
#   F(1) = 1
#   F(2) = 1
#   F(n) = F(n - 1) + F(n - 2) where n > 2
# struct:
# - Integer
# algo:
# - rtn 1 if n < 3
# - otherwise, rtn fib(n-1) + fib(n-2)


# def fibonacci(nth)
#   return 1 if nth < 3
#   fibonacci(nth - 1) + fibonacci(nth - 2) # v. expensive computationally
# end

def fibonacci_tail(nth, acc1, acc2) # avoids calling itself >1x
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(40)
p fibonacci(10100)
