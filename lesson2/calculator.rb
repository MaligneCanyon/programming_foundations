# ask the user for 2 nums
# ask user for op to perform
# perform an op on the 2 nums
# output the result

# answer = Kernel.gets()
# Kernel.puts(answer)

Kernel.puts("welcome to calculator")

Kernel.puts("What's the first number?")
num1 = Kernel.gets().chomp()
Kernel.puts(num1.inspect())

Kernel.puts("What's the second number?")
num2 = Kernel.gets().chomp()

Kernel.puts("What op would you like to perform? 1. add  2. subt  3. mult  4. div")
op = Kernel.gets().chomp()

if op == '1'
  result = num1.to_i() + num2.to_i()
elsif op == '2'
  result = num1.to_i() - num2.to_i()
elsif op == '3'
  result = num1.to_i() * num2.to_i()
else
  result = num1.to_f() / num2.to_f()
end
Kernel.puts(result)
