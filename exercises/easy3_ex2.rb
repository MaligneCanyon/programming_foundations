# inputs:
# - integers (two ints)
# outputs:
# - print msg
# reqs:
# - take 2 ints as input
# - print results of add, subt, product, quotient, rem and pow ops on those ints
# rules:
# - none
# struct:
# - numeric
# algo:
# - create an arr w/ the math op symbols as strings
# - prompt for two ints
# - for each arr element
#   - output the result of the math op on the two ints

ARR = %w(+ - * / % **)

def prompt(str)
  puts "==> #{str}"
end

prompt("Enter the first number:")
num1 = gets.to_i
prompt("Enter the second number:")
num2 = gets.to_i
ARR.each do |sym|
  str = "#{num1} #{sym} #{num2}"
  str += " = #{eval str}"
  prompt(str)
end


# puts "==> Enter the first number:"
# num1 = gets.to_i
# puts "==> Enter the second number:"
# num2 = gets.to_i
# puts "==> #{num1} + #{num2} = #{num1 + num2}"
# puts "==> #{num1} - #{num2} = #{num1 - num2}"
# puts "==> #{num1} * #{num2} = #{num1 * num2}"
# puts "==> #{num1} / #{num2} = #{num1 / num2}"
# puts "==> #{num1} % #{num2} = #{num1 % num2}"
# puts "==> #{num1} ** #{num2} = #{num1 ** num2}"


# ==> Enter the first number:
# 23
# ==> Enter the second number:
# 17
# ==> 23 + 17 = 40
# ==> 23 - 17 = 6
# ==> 23 * 17 = 391
# ==> 23 / 17 = 1
# ==> 23 % 17 = 6
# ==> 23 ** 17 = 141050039560662968926103
