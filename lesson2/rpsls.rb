# Rock Paper Scissors Lizard Spock game. The game flow should go like this:
#     the user makes a choice
#     the computer makes a choice
#     the winner is displayed
# each choice can defeat two other choices

CHOICES = {
  'r' => { rock: ['s', 'l'] },
  'p' => { paper: ['r', 'S'] },
  's' => { scissors: ['p', 'l'] },
  'l' => { lizard: ['p', 'S'] },
  'S' => { Spock: ['r', 's'] }
}

# VALID_CHOICES = %w(r p s l S)
# VALID_CHOICES = %w(rock paper scissors lizard Spock)
MATCH_POINTS = 5

def win?(player1, player2)
  # p "player1 == #{player1} (#{CHOICES[player1].keys[0]})"
  # p "player2 == #{player2} (#{CHOICES[player2].keys[0]})"
  # p "#{player1} beats #{CHOICES[player1].values[0][0]} " \
  #   "or #{CHOICES[player1].values[0][1]}"
  player2 == CHOICES[player1].values[0][0] ||
    player2 == CHOICES[player1].values[0][1]
  # (player1 == 'r' && (player2 == 's' || player2 == 'l')) ||
  #   (player1 == 'p' && (player2 == 'r' || player2 == 'S')) ||
  #   (player1 == 's' && (player2 == 'p' || player2 == 'l')) ||
  #   (player1 == 'l' && (player2 == 'p' || player2 == 'S')) ||
  #   (player1 == 'S' && (player2 == 'r' || player2 == 's'))
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("The computer won!")
  else
    prompt("It's a tie!")
  end
end

def count_result(player, computer, score)
  if win?(player, computer)
    score[:user] += 1
  elsif win?(computer, player)
    score[:computer] += 1
  end
  prompt("Your score is #{score[:user]}; " \
    "the computer's score is #{score[:computer]}")
end

def prompt(message)
  puts "=> #{message}"
end

loop do
  score = {
    user: 0,
    computer: 0
  }
  loop do
    choice = ''
    loop do
      prompt("Choose one: #{CHOICES.keys.join(', ')}")
      choice = gets.chomp[0] # only the first char of the string is relevant
      # if VALID_CHOICES.include?(choice)
      if CHOICES.key?(choice)
        break
      else
        prompt("That's not a valid choice")
      end
    end
    computer_choice = CHOICES.keys.sample
    # computer_choice = VALID_CHOICES.sample

    prompt("You chose #{CHOICES[choice].keys[0]}; " \
      "the computer chose #{CHOICES[computer_choice].keys[0]}")
    display_result(choice, computer_choice)
    count_result(choice, computer_choice, score)
    if score[:user] == MATCH_POINTS || score[:computer] == MATCH_POINTS
      prompt("Match is over; " \
        "#{score[:user] == MATCH_POINTS ? 'you are' : 'the computer is'}" \
        " the grand winner !")
      break
    end
  end
  prompt("Do you want to play again ?")
  answer = gets.chomp
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for playing. Goodbye!")
