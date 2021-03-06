# bonus 1
# The only superfluous use of the 'calc_total' method occurs within the
# 'compare_cards' method.
# Can pass the total value of the player and dealer cards to the method,
# rather than passing the cards themselves; however, this ultimately results
# in additional calls to the 'busted?' method, so little is gained.
# Also introduced a subtle bug where the Player total was not evaluated if
# the Player stayed with only 2 cards ... req'd an extra call to 'calc_total'
# method to fix ... pain in the ass

# bonus 2
# The "play again" code only occurs once in this implementation.
# In the Possible Solution, the first and second occurences use 'next'
# to start the game over so that the subsequent code is not executed;
# there is no subsequent code to the third occurence, so only the
# 'break' control statement is req'd there.

# bonus 3
# A "grand output" has already been provided with the 'display_hand' method.

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
DEALER = 'Dealer' # 'HAL9000' works too!
PLAYER = 'Player'
RESULT = [DEALER, "No one", PLAYER]
REQUIRED_WINS = 5

# bonus 5
DEALER_BREAK_POINT = 17 # usually 17
MAX_BREAK_POINT    = 21 # usually 21


def prompt(msg)
  puts "=> #{msg}"
end


# bonus 3
def display_hand(user, cards, total)
  puts "#{user} cards are #{cards}; total is #{total}"
end


def init_deck
  clubs = SUIT.clone
  diamonds = SUIT.clone
  hearts = SUIT.clone
  spades = SUIT.clone

  deck = []
  [clubs, diamonds, hearts, spades].each { |suit| deck += suit.keys }
  deck.shuffle!

  player_cards = deck.pop(2)
  dealer_cards = deck.pop(2)

  display_hand(PLAYER, player_cards, calc_total(player_cards))
  # display_hand(DEALER, dealer_cards, calc_total(dealer_cards))
  puts "#{DEALER} has a #{dealer_cards[1]}"

  return deck, player_cards, dealer_cards
end


def busted?(total)
  total > MAX_BREAK_POINT
end


def calc_total(cards)
  total = 0
  cards.each { |card| total += SUIT[card] }
  cards.each { |card| total -= 10 if total > MAX_BREAK_POINT && card == 'A' }
  total
end


def player_choice
  answer = ''
  loop do
    prompt 'Hit or Stay ?'
    answer = gets.chomp
    if answer.downcase.start_with?('h')
      answer = 'hit'
      break
    elsif answer.downcase.start_with?('s')
      answer = 'stay'
      break
    end
    prompt 'Sorry, not a valid choice'
  end
  prompt "You chose to #{answer} !"
  answer
end


# bonus 1
# the player_turn method can return the total value of the player's cards,
# rather than the actual cards
def player_turn(deck, player_cards)
  total = calc_total(player_cards) # req'd for bonus 1
  loop do
    break if player_choice == 'stay'
    player_cards << deck.pop
    total = calc_total(player_cards)
    display_hand(PLAYER, player_cards, total)
    # return [] if busted?(total)
    break if busted?(total)
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
    display_hand(DEALER, dealer_cards, total)
    # return [] if busted?(total)
    break if busted?(total)

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
#   result = (calc_total(player_cards) <=> calc_total(dealer_cards))
#   prompt RESULT[result + 1]
# end
def compare_cards(player_total, dealer_total)
  result = (player_total <=> dealer_total)
  # bonus 4
  # prompt RESULT[result + 1]
  RESULT[result + 1]
end

# start of main program
prompt "Welcome to #{MAX_BREAK_POINT} !" # bonus 5
wins = { PLAYER => 0, DEALER => 0 } # bonus 4
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
      # arguments for the 'compare_cards' method are now the total value of the
      # hands, rather than the hands themselves
      # bonus 4
      # 'compare_cards' now returns a string representing the winner
      # compare_cards(player_total, dealer_total)
      winner = compare_cards(player_total, dealer_total)
    end
  end

  # bonus 4
  if winner == RESULT[1]
    prompt "It's a tie !"
  else
    wins[winner] += 1
    prompt "#{winner} won !"
    if wins[winner] == REQUIRED_WINS
      prompt "#{winner} is the champion !"
      break
    end
  end
  prompt  "#{wins.keys[0]} has #{wins.values[0]} win(s); " \
          "#{wins.keys[1]} has #{wins.values[1]}."

  prompt 'Do you want to play again ? (y or n)'
  break unless gets.chomp.downcase.start_with?('y')
end

# bonus 5
# prompt "Thanks for playing Twenty-One !"
prompt "Thanks for playing #{MAX_BREAK_POINT} !"
