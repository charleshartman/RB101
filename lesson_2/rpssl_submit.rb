# rpssl_submit.rb

VALID_CHOICES = %w(r p s S l)

def clear_screen
  system 'clear'
  system 'cls'
end

def prompt(message)
  puts "=> #{message}"
end

scoreboard = {
  player: 0,
  computer: 0
}

def keep_score(new, totals)
  if new == 'player'
    totals[:player] += 1
  elsif new == 'computer'
    totals[:computer] += 1
  end
end

rpssl_logic = {
  r: ['s', 'l'],
  p: ['r', 'S'],
  s: ['p', 'l'],
  S: ['s', 'r'],
  l: ['S', 'p']
}

def win?(first, second, logic_hash)
  logic_hash[first.to_sym].include?(second)
end

def display_results(player, computer, logic_hash)
  if win?(player, computer, logic_hash)
    prompt('You won this round!')
    'player'
  elsif win?(computer, player, logic_hash)
    prompt('Computer won this round!')
    'computer'
  else
    prompt('You tied this round!')
  end
end

def reset_scoreboard(totals)
  totals[:player] = 0
  totals[:computer] = 0
end

loop do
  clear_screen
  prompt('Welcome to Rock-Paper-Scissors-Spock-Lizard')
  prompt("or 'RPSSL' for short")
  puts ''

  choice = ''
  reset_scoreboard(scoreboard)
  loop do
    loop do
      prompt("The current player score is: #{scoreboard[:player]}")
      prompt("The current computer score is: #{scoreboard[:computer]}")
      puts ''
      prompt("Choose one: [r]ock [p]aper [s]cissors [S]pock [l]izard")
      prompt("First letter only please, mind your case for [S]pock!")
      choice = gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      else
        prompt('Not a valid choice. Please try again.')
        sleep 1
        clear_screen
      end
    end

    computer_choice = VALID_CHOICES.sample

    puts "You chose: #{choice}; Computer chose: #{computer_choice}"

    result = display_results(choice, computer_choice, rpssl_logic)
    keep_score(result, scoreboard)

    sleep 2.25

    clear_screen

    if scoreboard[:player] == 5
      puts ''
      prompt("*** You have won five rounds! You win the match! ***")
      puts ''
      break
    elsif scoreboard[:computer] == 5
      puts ''
      prompt("Computer has won five rounds! Computer wins the match!")
      puts ''
      break
    end
  end

  prompt('Do you want to play another match? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Goodbye!')
