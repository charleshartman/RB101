# ttt_bonus.rb
# Tic Tac Toe Bonus Features Assignment

INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                [[1, 5, 9], [3, 5, 7]]              # diagonals

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
  # And also, eternal glory... cus, TTT, bro...
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
  else
    nil
  end
end

def computer_places_piece!(brd)
  square = nil

  # be offensive
  WINNING_LINES.each do |line|
    square = find_at_risk_square(line, brd, COMPUTER_MARKER)
    break if square
  end

  # else defensive
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, PLAYER_MARKER)
      break if square
    end
  end

  # otherwise choose 5, if N/A then random
  if !square
    if empty_squares(brd).include?(5)
      square = 5
    else
      square = empty_squares(brd).sample
    end
  end

  brd[square] = COMPUTER_MARKER
end

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

  reset_scoreboard(scoreboard)

  loop do
    board = initialize_board

    loop do
      display_board(board)

      show_scoreboard(scoreboard)

      player_places_piece!(board)
      break if someone_won?(board) || board_full?(board)

      computer_places_piece!(board)
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
