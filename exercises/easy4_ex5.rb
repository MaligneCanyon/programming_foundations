# inputs:
# - integer
# outputs:
# - integer
# reqs:
# - take an int as input num
# - search for all multiples of 3 and 5 btwn 1 and the input num
# - compute the sum of the multiples
# - rtn the sum
# rules:
# - input > 1
# struct:
# - array (to hold multiples)
# algo:
# - init an arr to []
# - from 1 to num
#   - if the current num % 3 == 0
#     - copy the current num to the arr
#   - else if the current num % 5 == 0
#     - copy the current num to the arr
# - sum the arr values
# - rtn the sum

def multisum(num)
  arr = []
  (1..num).each { |n| arr << n if n % 3 == 0 || n % 5 == 0 }
  arr.sum
end

# def multisum(num)
#   arr = []
#   3.step(by: 3, to: num) do |value|
#     arr << value
#   end
#   5.step(by: 5, to: num) do |value|
#     arr << value
#   end
#   arr.uniq.reduce(:+)
# end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
