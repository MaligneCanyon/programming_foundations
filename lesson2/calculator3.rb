# ask the user for 2 nums
# ask user for op to perform
# perform an op on the 2 nums
# output the result


def prompt(message)
  Kernel.puts("=> #{message}")
end


# def valid_number?(num)
#   num.to_i() != 0
# end
def valid_number?(str, min, max)
  num = str.to_i
  (num.to_s == str && num.between?(min, max))
end


def op_to_msg(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  else
    'Dividing'
  end
  # other code here
  return op
end


# Kernel.puts("Welcome to calculator")
# 4. prompt for username
prompt("Welcome to calculator; enter your name:")
name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Make sure to use a valid name")
  else
    break
  end
end
prompt("Hi #{name}")

# 3. want to provide looping structure to validate user input
loop do # main loop
  num1 = ''
  loop do
    prompt("What's the first number?")
    num1 = Kernel.gets().chomp()
    # Kernel.puts(num1.inspect())
    if valid_number?(num1, -100, 100)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  num2 = ''
  loop do
    prompt("What's the second number?")
    num2 = Kernel.gets().chomp()
    # avoid divide by zero
    if valid_number?(num2, -100, -1) || valid_number?(num2, 1, 100)
      break
    else
      prompt("Please enter a valid number")
    end
  end

  # 6. use heredoc for menu, instead of lengthy prompt for operator
  # prompt("What op would you like to perform? 1. add 2. subt 3. mult 4. div")
  op_prompt = <<-MSG
    What op would you like to perform?
    1. add
    2. subt
    3. mult
    4. div
  MSG
  prompt(op_prompt)

  # 5. validate operator
  op = ''
  loop do
    op = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(op)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  # 7. using a method to format the prompt, add prompt to confirm operator
  prompt("#{op_to_msg(op)} the two numbers")

  # 2. refactor conditionals to a 'case' statement
  # if op == '1'
  #   result = num1.to_i() + num2.to_i()
  # elsif op == '2'
  #   result = num1.to_i() - num2.to_i()
  # elsif op == '3'
  #   result = num1.to_i() * num2.to_i()
  # else
  #   result = num1.to_f() / num2.to_f()
  # end

  result =  case op
            when '1'
              num1.to_i() + num2.to_i()
            when '2'
              num1.to_i() - num2.to_i()
            when '3'
              num1.to_i() * num2.to_i()
            else
              num1.to_f() / num2.to_f()
            end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation ? (Y to calc again)")
  answer = Kernel.gets().chomp()
  break unless answer.upcase().start_with?('Y')
end # main loop

prompt("Thanks for visiting #{name}")
