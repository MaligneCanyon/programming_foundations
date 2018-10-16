# inputs:
# - Integer (greater than 0)
# - String (type of op)
# outputs:
# - print a msg
# reqs:
# - take an int input
# - take a char ('s' or 'p') to determine the op (sum or product) to perform on the int
# - perform the op
# - output the msg
# rules:
# - none
# struct:
# - numeric
# algo:
# - prompt for an int
# - prompt for an op to perform
# - perform the op
#   - if op is sum
#     - result = sum of the range 1 to num
#   - else
#     - result = product of the range 1 to num
# - output the result

def sl_prompt(msg)
  puts ">> #{msg} "
end

sl_prompt("Please enter an integer greater than 0:")
num = gets.to_i
sl_prompt("Enter 's' to compute the sum, 'p' to compute the product.")
choice = gets.chomp

if choice == 's'
  ans = (1..num).reduce(:+)
  str = "The sum"
elsif choice == 'p'
  ans = (2..num).reduce(:*)
  str = "The product"
else
  puts "Try again"
  exit
end
puts str << " of integers between 1 and #{num} is #{ans}."
