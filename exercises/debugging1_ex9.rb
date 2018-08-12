# there is no condition that stops the recursive calls
# also, each recursive call generates a new winning number and resets the 'attempts'
# var to zero

# get rid of the recursive call (already hamdled by the 'loop do' statement)
# also, add a break statement to exit the loop if you win before 'max_attempts' reached
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i
    p "attempts == #{attempts}, guess == #{guess}, winning_number == #{winning_number}"

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      # guess_number(max_number, max_attempts)
    end
  end
end

guess_number(10, 3)
