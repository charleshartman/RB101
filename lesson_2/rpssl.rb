# rpssl

# goals
# add two more conditions (spock, lizard) to logic for RPS
# accept input of up to the first two letters of each choice
# this is a match not a single game, wrap larger game loop in another
# loop that counts and ends after five wins by either player

# RULES
=begin
Scissors cuts paper
Paper covers rock
Rock crushes lizard
Lizard poisons Spock
Spock smashes scissors
Scissors decapitates lizard
Lizards eats paper
Paper disproves Spock
Spock vaporizes rock
Rock crushes scissors
rescue => exception
=end

# write keep_score method
# add +2 choices
# enable abbrieviation
# encompass game with match loop

VALID_CHOICES = %w(r p s S l)

def clear_screen
  system 'clear'
  system 'cls'
end

def prompt(message)
  puts "=> #{message}"
end

def keep_score(winner)
  puts winner # placeholder, write this method
end

def win?(first, second)
  first == 'rock' && second == "scissors" ||
    first == 'paper' && second == 'rock' ||
    first == 'scissors' && second == 'paper'
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won this round!')
    keep_score(player_win)
  elsif win?(computer, player)
    prompt('Computer won this round!')
    keep_score(computer_win)
  else
    prompt('You tied this round!')
  end
end

loop do
  clear_screen
  prompt('Welcome to Rock-Paper-Scissors-Spock-Lizard')
  prompt("or 'RPSSL' for short")
  puts ''

  choice = ''

  loop do
    prompt("Choose one: [r]ock [p]aper [s]cissors [S]pock [l]izard")
    prompt("First letter only please, mind your case for Spock!")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      puts choice
      break
    else
      prompt('Not a valid choice. Please try again.')
    end
  end

  compter_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}; Computer chose: #{compter_choice}"

  display_results(choice, compter_choice)

  if player_score == 5
    prompt("You have won five rounds! You win the match!")
    break
  elsif computer_score == 5
    prompt("Computer has won five rounds! Computer wins the match!")
    break
  end

  prompt('Do you want to play another match? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Goodbye!')
