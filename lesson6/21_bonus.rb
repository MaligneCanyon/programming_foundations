# bonus 1
# The only superfluous use of the 'calc_total' method occurs within the
# 'compare_cards' method.
# Can pass the total value of the player and dealer cards to the method,
# rather than passing the cards themselves; however, this ultimately results
# in additional calls to the 'busted?' method, so little is gained.
# Also introduced a subtle bug where the Player total was not evaluated if
# the Player stayed with only 2 cards ... pain in the ass.

# bonus 2
# The "play again" code only occurs once in this implementation.
# In the Possible Solution, the first and second occurences use 'next'
# to start the game over so that the subsequent code is not executed;
# there is no subsequent code to the third occurence, so only the
# 'break' control statement is req'd there.

# bonus 3
# A "grand output" has already been provided with the 'hand' method.  That's
# a pretty poor method name, so I'll change it to 'hand_summary'.

# bonus 4
# copied (and modified) relevant code from TicTacToe program

SUIT = {
  'A'  => 11,
  'K'  => 10,
  'Q'  => 10,
  'J'  => 10,
  '10' => 10,
  '9'  => 9,
  '8'  => 8,
  '7'  => 7,
  '6'  => 6,
  '5'  => 5,
  '4'  => 4,
  '3'  => 3,
  '2'  => 2
}

# bonus 4
# RESULT = ["Dealer wins", "It's a tie", "Player wins"]
RESULT = ["Dealer", "No one", "Player"]
REQUIRED_WINS = 5

# bonus 5
DEALER_BREAK_POINT = 27
MAX_BREAK_POINT = 31


def prompt(msg)
  puts "=> #{msg}"
end


# bonus 3
# def hand(user, cards, total)
def hand_summary(user, cards, total)
  puts "#{user} cards are #{cards}; total is #{total}"
end


def init_deck
  clubs = SUIT.clone
  diamonds = SUIT.clone
  hearts = SUIT.clone
  spades = SUIT.clone

  deck = []
  [clubs, diamonds, hearts, spades].each do |suit|
    deck += suit.keys
  end
  deck.shuffle!

  player_cards = deck.pop(2)
  dealer_cards = deck.pop(2)

  hand_summary("Player", player_cards, calc_total(player_cards))
  # hand_summary("Dealer", dealer_cards, calc_total(dealer_cards))
  puts "Dealer has a #{dealer_cards[1]}"

  return deck, player_cards, dealer_cards
end


def busted?(total)
  total > MAX_BREAK_POINT
end


def player_choice
  answer = ''
  loop do
    prompt "Hit or Stay ?"
    answer = gets.chomp
    if answer.downcase.start_with?('h')
      answer = 'hit'
      break
    elsif answer.downcase.start_with?('s')
      answer = 'stay'
      break
    end
    prompt "Sorry, not a valid choice"
  end
  prompt "You chose to #{answer} !"
  answer
end


def calc_total(cards)
  total = 0
  cards.each do |card|
    total += SUIT[card]
  end
  cards.each do |card|
    if total > MAX_BREAK_POINT && card == 'A'
      total -= 10
    end
  end
  total
end


# bonus 1
# the player_turn method can return the total value of the dealer's cards,
# rather than the actual cards
def player_turn(deck, player_cards)
  total = calc_total(player_cards) # req'd for bonus 1
  loop do
    answer = player_choice
    break if answer == 'stay'
    player_cards << deck.pop
    total = calc_total(player_cards)
    hand_summary("Player", player_cards, total)
    if busted?(total)
      prompt "Busted !"
      # return []
      break
    end
  end
  # player_cards
  total
end

# bonus 1
# the dealer_turn method can return the total value of the dealer's cards,
# rather than the actual cards
def dealer_turn(deck, dealer_cards)
  total = 0 # req'd for bonus 1
  loop do
    total = calc_total(dealer_cards)
    hand_summary("Dealer", dealer_cards, total)
    if busted?(total)
      prompt "Busted !"
      # return []
      break
    end
    # bonus 5
    # break if total > 16
    break if total >= DEALER_BREAK_POINT
    dealer_cards << deck.pop
  end
  # dealer_cards
  total
end

# bonus 1
# def compare_cards(player_cards, dealer_cards)
#   result = (calc_total(player_cards) <=> calc_total(dealer_cards)) + 1
#   prompt RESULT[result]
# end
def compare_cards(player_total, dealer_total)
  result = (player_total <=> dealer_total) + 1
  # bonus 4
  # prompt RESULT[result]
  RESULT[result]
end

# start of main program
prompt "Welcome to #{MAX_BREAK_POINT} !" # bonus 5
wins = { 'Player' => 0, 'Dealer' => 0 } # bonus 4
loop do
  deck, player_cards, dealer_cards = init_deck
  # bonus 1
  # 'player_turn' now returns the total value of the player's cards
  # player_cards = player_turn(deck, player_cards)
  # if player_cards == [] # player busted
  player_total = player_turn(deck, player_cards)
  if busted?(player_total) # player busted
    # bonus 4
    # prompt RESULT[0] # "Dealer wins !"
    winner = RESULT[0]
  else
    # bonus 1
    # 'dealer_turn' now returns the total value of the dealer's cards
    # dealer_cards = dealer_turn(deck, dealer_cards)
    # if dealer_cards == [] # dealer busted
    dealer_total = dealer_turn(deck, dealer_cards)
    if busted?(dealer_total) # dealer busted
      # bonus 4
      # prompt RESULT[2] # "Player wins !"
      winner = RESULT[2]
    else
      # bonus 1
      # arguments for the 'compare_cards' method are now the total value of the hands,
      # rather than the hands themselves
      # bonus 4
      # 'compare_cards' now  returns a string representing the winner
      # compare_cards(player_total, dealer_total)
      winner = compare_cards(player_total, dealer_total)
    end
  end

  # bonus 4
  if winner != RESULT[1]
    wins[winner] += 1
    prompt "#{winner} won !"
    if wins.values.max == REQUIRED_WINS
      prompt "#{winner} is the champion !"
      break
    end
  else
    prompt "It's a tie !"
  end
  prompt  "#{wins.keys[0]} has #{wins.values[0]} win(s); " \
          "#{wins.keys[1]} has #{wins.values[1]}."


  prompt "Do you want to play again ? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

# bonus 5
# prompt "Thanks for playing Twenty-One !"
prompt "Thanks for playing #{MAX_BREAK_POINT} !"
