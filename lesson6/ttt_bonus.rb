require 'pry'

INITIAL_MARKER  = ' '
PLAYER_MARKER   = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                [[1, 5, 9], [3, 5, 7]]              # diags
FIRST_MOVER = 'choose' # "player", "computer", or "choose" # bonus 5c

def prompt(msg)
  puts "=> #{msg}"
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You are a(n) #{PLAYER_MARKER}, computer is a(n) #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+-----"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
  puts ""
end
# rubocop:enable Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = 0
  loop do
    # prompt "Choose a square (#{empty_squares(brd).join(', ')}):" # base case
    prompt "Choose a square (#{joinor(empty_squares(brd))}):" # bonus 1
    square = gets.to_i
    break if empty_squares(brd).include?(square)
    prompt "Sorry, not a valid choice"
  end
  brd[square] = PLAYER_MARKER
end

# bonus 3
def detect_action(brd, marker)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(marker) == 2
      line.each_with_index do |_, ndx|
        return line[ndx] if brd[line[ndx]] == INITIAL_MARKER
      end
    end
  end
  0
end

# base case
#   square = empty_squares(brd).sample
#   brd[square] = COMPUTER_MARKER
# end

# bonus 3
# def computer_places_piece!(brd)
#   square = detect_action(brd)
#   square = empty_squares(brd).sample unless square > 0
#   brd[square] = COMPUTER_MARKER
# end

# bonus 4
def computer_places_piece!(brd) # with offensive capability
  square = detect_action(brd, COMPUTER_MARKER)
  square = detect_action(brd, PLAYER_MARKER) unless square > 0
  square = 5 if empty_squares(brd).include?(5) # bonus 5b
  square = empty_squares(brd).sample unless square > 0
  brd[square] = COMPUTER_MARKER
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

# returns either a str representing the winner, or nil
def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

# bonus 1
def joinor(arr, sep = ' ', conj = 'or') # optional params
  str = ''
  size = arr.size
  if sep == ' ' && size > 2
    sep = ', '
  end
  conj << ' '
  arr.each_with_index do |elem, ndx|
    str << elem.to_s
    str << sep unless ndx == size - 1
    str << conj if ndx == size - 2
  end
  str
end

# bonus 6
def place_piece!(brd, player)
  if player == 'computer'
    computer_places_piece!(brd)
  else
    player_places_piece!(brd)
  end
end

# bonus 6
def alternate_player(player)
  player = (player == 'computer' ? 'player' : 'computer')
end

# start of main program
wins = { 'Player' => 0, 'Computer' => 0 } # bonus 2
loop do
  if FIRST_MOVER == 'choose'
    prompt "Who goes first ? You or the computer ? (y or c)"
    answer = gets.chomp
    current_player = answer.downcase.start_with?('c') ? 'computer' : 'player'
  else
    current_player = FIRST_MOVER
  end
  # p current_player

  board = initialize_board
  loop do
    display_board(board)

    # base case
    # player_places_piece!(board)
    # break if someone_won?(board) || board_full?(board)
    # computer_places_piece!(board)

    # bonus 5c
    # if current_player == 'player' || current_player== ''
    #   player_places_piece!(board)
    #   break if someone_won?(board) || board_full?(board)
    # end
    # current_player = ''
    # computer_places_piece!(board)

    # bonus 6
    place_piece!(board, current_player)
    current_player = alternate_player(current_player)

    break if someone_won?(board) || board_full?(board)
  end
  display_board(board)

  if someone_won?(board)
    winner = detect_winner(board)
    wins[winner] += 1 # bonus 2
    prompt "#{winner} won !"

    # bonus 2
    if wins.values.max == 5
      prompt "#{winner} is the champion !"
      break
    end

  else
    prompt "It's a tie !"
  end

  # bonus 2
  prompt  "#{wins.keys[0]} has #{wins.values[0]} win(s); " \
          "#{wins.keys[1]} has #{wins.values[1]}."

  prompt "Do you want to play again ? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thanks for playing Tic Tac Toe !"
