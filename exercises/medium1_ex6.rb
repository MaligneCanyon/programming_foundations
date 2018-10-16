# inputs:
# - String (the op to perform)
# outputs:
# - Integer (the result of the op)
# reqs:
# - implement a stack using push and pop methods
#   - use a 'register' to rep the current value
#   - for a given op, pop most recently pushed value from the stack, perform the op on that and the register value, and store the result in the register
# - all ops are integer based
# - take a str as an arg (specing the operands and the ops to perform)
# - init the reg to 0
# rules:
# - none
# struct:
# - arr (to hold list of cmds)
# algo:
# - init a reg (int) to 0
# - init a stack (array) of ints to []
# - split the cmd str into an arr of cmds
# - for each cmd
#   - perform the specd op

# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

def minilang(str)
  stack = []
  reg = 0

  # puts str
  cmds = str.split
  cmds.each do |cmd|
    # puts "cmd == #{cmd}"
    case cmd
    when 'PUSH'  then stack << reg
    when 'ADD'   then reg += stack.pop
    when 'SUB'   then reg -= stack.pop
    when 'MULT'  then reg *= stack.pop
    when 'DIV'   then reg /= stack.pop
    when 'MOD'   then reg %= stack.pop
    when 'POP'   then reg = stack.pop
    when 'PRINT' then puts reg
    else reg = cmd.to_i # integer
    end
  end
  puts
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)
