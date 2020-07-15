# ttt_bonus_r2.rb
# Tic Tac Toe Bonus Features Assignment #1-6+, #1-5 also @ 'ttt_bonus.rb'

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

GOES_FIRST = 'choose' # set to 'player', 'computer' or 'choose'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

# current_player = ''

def clear_screen
  system 'clear'
  system 'cls'
end

scoreboard = {
  Player: 0,
  Computer: 0
}

def keep_score(new, scoreboard)
  if new == 'Player'
    scoreboard[:Player] += 1
  elsif new == 'Computer'
    scoreboard[:Computer] += 1
  end
end

def reset_scoreboard(scoreboard)
  scoreboard[:Player] = 0
  scoreboard[:Computer] = 0
end

def show_scoreboard(scoreboard)
  prompt("Match scoreboard | Player: #{scoreboard[:Player]}, " \
                 "Computer: #{scoreboard[:Computer]}\n\n")
end

def prompt(msg)
  puts "=> #{msg}"
end

def show_header
  clear_screen
  puts ''
  prompt("*** Welcome (back) to Tic Tac Toe! ***")
  prompt("** Win five games to win the match. **")
  puts ''
  prompt("You are #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}.")
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  show_header
  puts ''
  puts '     |     |'
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts '     |     |'
  puts '-----+-----+-----'
  puts '     |     |'
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts '     |     |'
  puts ''
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

def joinor(arr, div1 = ', ', div2 = 'or')
  case arr.length
  when 0 then ''
  when 1 then arr[0].to_s
  when 2 then "#{arr[0]} #{div2} #{arr[1]}"
  else
    arr[-1] = "#{div2} #{arr[-1]}"
    arr.join(div1)
  end
end

def player_places_piece!(brd)
  square = ''
  loop do
    prompt("Choose a square (#{joinor(empty_squares(brd))}):")
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)

    prompt("Sorry, that's not a valid choice.")
  end

  brd[square] = PLAYER_MARKER
end

def find_at_risk_square(line, board, marker)
  if board.values_at(*line).count(marker) == 2
    board.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def alternate_player(current_player)
  case current_player
  when 'player'
    current_player = 'computer'
  when 'computer'
    current_player = 'player'
  end
  current_player
end

def place_piece!(board, current_player)
  if current_player == 'player'
    player_places_piece!(board)
  elsif current_player == 'computer'
    computer_places_piece!(board)
  end
end

# rubocop:disable Metrics/CyclomaticComplexity
def computer_places_piece!(brd)
  square = nil

  # offensive if two
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # else defensive if two
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  square = 5 if empty_squares(brd).include?(5)    # take 5 if available

  square = empty_squares(brd).sample if !square   # else choose random opening

  brd[square] = COMPUTER_MARKER
end
# rubocop:enable Metrics/CyclomaticComplexity

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

loop do
  if GOES_FIRST == 'choose'
    show_header
    prompt('Who goes first? (player/computer)')
    choice = gets.chomp.downcase
    unless choice == 'player' || choice == 'computer'
      prompt('Invalid choice, bro. Try again!')
      sleep 1.25
      next
    end
    nil
  end

  reset_scoreboard(scoreboard)

  loop do
    board = initialize_board

    if GOES_FIRST == 'player' || choice == 'player'
      current_player = 'player'
    elsif GOES_FIRST == 'computer' || choice == 'computer'
      current_player = 'computer'
    end

    loop do
      display_board(board)
      show_scoreboard(scoreboard)

      place_piece!(board, current_player)
      display_board(board)

      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    display_board(board)

    if someone_won?(board)
      prompt("#{detect_winner(board)} won!\n\n")
      # iterate scoreboard here
      keep_score(detect_winner(board), scoreboard)
    else
      prompt("It's a tie!\n\n")
    end

    show_scoreboard(scoreboard)
    sleep 2.25

    # eventually move this out to its own method
    if scoreboard[:Player] == 5
      puts ''
      prompt("*** You have won five rounds! You win the match! ***")
      puts ''
      break
    elsif scoreboard[:Computer] == 5
      puts ''
      prompt("Computer has won five rounds! Computer wins the match!")
      puts ''
      break
    end
  end

  prompt('Do you want to play another match? (y or n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing Tic Tac Toe! Goodbye.')
