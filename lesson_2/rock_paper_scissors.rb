# rock_paper_scissors.rb

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts "=> #{message}"
end

def display_results(player, computer)
  if  player == 'rock' && computer == "scissors" ||
      player == 'paper' && computer == 'rock' ||
      player == 'scissors' && computer == 'paper'
    prompt('You won!')
  elsif player == 'rock' && computer == "paper" ||
        player == 'paper' && computer == 'scissors' ||
        player == 'scissors' && computer == 'rock'
    prompt('Computer won!')
  else
    prompt('You tied.')
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice. Please try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts "You chose: #{choice}; Computer chose: #{computer_choice}"

  display_results(choice, computer_choice)

  prompt('Do you want to play again? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing! Goodbye!')
