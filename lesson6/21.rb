# init deck
# init player cards
# init dealer cards
# player goes
# if player not busted, dealer goes
# if dealer not busted, compare hands

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

RESULT = ["Dealer wins !", "It's a tie", "Player wins !"]


def prompt(msg)
  puts "=> #{msg}"
end


def display_hand(user, cards, total)
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

  # p deck
  display_hand("Player", player_cards, calc_total(player_cards))
  # display_hand("Dealer", dealer_cards, calc_total(dealer_cards))
  puts "Dealer has a #{dealer_cards[1]}"

  return deck, player_cards, dealer_cards
end


def busted?(total)
  total > 21
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
    if total > 21 && card == 'A'
      total -= 10
    end
  end
  total
end


def player_turn(deck, player_cards)
  loop do
    answer = player_choice
    # p answer
    break if answer == 'stay'
    player_cards << deck.pop
    total = calc_total(player_cards)
    display_hand("Player", player_cards, total)
    return [] if busted?(total)
  end
  player_cards
end


def dealer_turn(deck, dealer_cards)
  loop do
    total = calc_total(dealer_cards)
    display_hand("Dealer", dealer_cards, total)
    return [] if busted?(total)
    break if total > 16
    dealer_cards << deck.pop
  end
  dealer_cards
end


def compare_cards(player_cards, dealer_cards)
  result = (calc_total(player_cards) <=> calc_total(dealer_cards))
  prompt RESULT[result + 1]
end


# begin main program
loop do
  deck, player_cards, dealer_cards = init_deck

  player_cards = player_turn(deck, player_cards)
  if player_cards == [] # player busted
    prompt RESULT[0] # "Dealer wins !"
  else
    dealer_cards = dealer_turn(deck, dealer_cards)
    if dealer_cards == [] # dealer busted
      prompt RESULT[2] # "Player wins !"
    else
      compare_cards(player_cards, dealer_cards)
    end
  end
  # puts "size of deck == #{deck.size}\n#{deck}"

  prompt "Do you want to play again ? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Twenty-One !"
