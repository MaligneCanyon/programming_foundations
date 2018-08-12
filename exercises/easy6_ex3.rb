# input: int
# output: int
# reqs:
#   - calc and return an index
#   - index is 1st fib_num w/ num of digits spec'd by the input_num
#   - input_num always >= 2
# rules:
#   - 1st fib_num has ndx == 1
# datastruct:
#   - array (since ndx is impt)
# algo:
#   - init fib_arr as [0, 1, 1, 2, 3, 5, 8]
#     - so that fib_ndx and arr_ndx match
#     - because we know that # digits in desired output is always >= 2
#   - until fib_num.to_s.length == input_num
#     - gen an new fib_num
#     - add the new fib_num to the fib_arr
#   - return the ndx of the last fib_num

def find_fibonacci_index_by_length(input_digits)
  fib_arr = [0, 1, 1, 2, 3, 5, 8]
  fib_num = 8
  fib_ndx = 6
  until fib_num.to_s.length >= input_digits
    fib_num = fib_arr[fib_ndx - 1] + fib_arr[fib_ndx]
    fib_arr << fib_num
    fib_ndx += 1
  end
  fib_ndx
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
