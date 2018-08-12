# Build a mortgage calculator (or car payment calculator - it's the same thing).
# You'll need three pieces of information:
#     the loan amount
#     the Annual Percentage Rate (APR)
#     the loan duration
# From the above, you'll need to calculate the following two things:
#     monthly interest rate
#     loan duration in months
# You can use the following formula:

# m = p * (j / (1 - (1 + j)**(-n)))
#     m = monthly payment
#     p = loan amount
#     j = monthly interest rate
#     n = loan duration in months

# inputs:
# - loan amt (fp)
# - APR (fp, %)
# - loan duration (int, years - assumed)
# outputs:
# - monthly payment (fp, XXXX.xx format)
# reqs:
# - validate user input
# - calc monthly int rate
# - calc loan duration in months
# rules:
# - use the provided formula
# - monthly int rate is quoted APR / 12 / 100 (i.e. decimal format, not %)
# questions:
# - payment table ?
# - allow variable payments ?
# - allow variable int rate ?
# datastruct:
# - numeric
# - inputs are str; convert to fp
# algo:
# - ask user for inputs
#   - loan amt in $
#   - loan duration in years
#   - APR in %
# - validate inputs
#   - all should be >= 0
# - calc
#   - monthly interest rate
#   - loan duration in months
#   - monthly payment
# - format values as table and printout
# - ask user whether they wish to continue

MONTHS_PER_YEAR = 12

def prompt(message)
  puts("=> #{message}")
end

def invalid_number?(str)
  str.empty? || str.to_f < 0
end

def get_input(prompt_str)
  input_str = ''
  loop do
    prompt(prompt_str)
    input_str = gets.chomp
    if invalid_number?(input_str)
      prompt("Please enter a valid number")
    else
      break
    end
  end
  input_str
end

prompt("Welcome to loan calculator; please enter your name:")
name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name")
  else
    break
  end
end
prompt("Hi #{name}!")

loan_amt = get_input("What is the loan amount in $ ?").to_f
# loan_amt = ''
# loop do
#   prompt("What is the loan amount in $ ?")
#   loan_amt = gets.chomp
#   if valid_number?(loan_amt, 0, 100_000)
#     break
#   else
#     prompt("Please enter a valid number")
#   end
# end

duration_years = get_input("What's the loan duration in years ?").to_f
duration_months = duration_years * MONTHS_PER_YEAR

loop do # main loop
  interest_rate_annual = get_input("What's the APR in % ?").to_f
  interest_rate_monthly = interest_rate_annual / MONTHS_PER_YEAR / 100

  payment = loan_amt * interest_rate_monthly /
            (1 - (1 + interest_rate_monthly)**-duration_months)
  prompt(format("Your payment for this month is $%.2f", payment))

  prompt("Do you want to perform another calculation ? (Y to calc again)")
  answer = gets.chomp
  break unless answer.upcase.start_with?('Y')
end # main loop
prompt("Thanks for visiting #{name}!")
