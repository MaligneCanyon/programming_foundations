# - the line
#     cards.map do |card|
#   does not change the values of the cards array, so it still contains symbols
#   for the higher ranking cards, so the line
#     sum += cards.sum
#   attempts to add symbols to integers
# - instead, use
#     cards.map! do |card|
# - also, need to clone the original cards array so that each suit in the deck
#   is unique

cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards,
         :diamonds => cards,
         :clubs    => cards,
         :spades   => cards }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  deck[suit] = cards.clone
  suit_cards = deck[suit]
  suit_cards.shuffle!
  player_cards << suit_cards.pop
  p "suit = #{suit}, suit_cards = #{suit_cards}, player_cards = #{player_cards}"
  # cards = deck[suit]
  # cards.shuffle!
  # player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, cards)|
  cards.map! do |card|
  # cards.map do |card|
    score(card)
  end
  p "cards == #{cards}"
  sum += cards.sum
end

puts sum
