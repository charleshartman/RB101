# payment_calculator_v2.rb
# refactor, add checks to validate inputs, repeat option, clear

system "clear"

def prompt(message)
  puts "=> #{message}"
end

def calculation(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
  m
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def check_zero?(input)
  input != '0'
end

def valid_entry?(input)
  float?(input) && check_zero?(input)
end

prompt('Welcome to Payment Calculator')

loop do
  loan_amount = ''
  loop do
    prompt('Please enter loan amount:')
    loan_amount = gets.chomp

    if valid_entry?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt('Invalid entry, please input a valid number!')
    end
  end

  apr = ''
  apr_monthly = ''
  loop do
    prompt('Please enter APR as a decimal (e.g. 5, 4.125, 3.25):')
    apr = gets.chomp

    if valid_entry?(apr)
      apr_monthly = apr.to_f / 100 / 12
      break
    else
      prompt('Invalid entry, please input a valid number!')
    end
  end

  years = ''
  months = ''
  loop do
    prompt('Lastly, please enter duration (in years):')
    years = gets.chomp

    if valid_entry?(years)
      months = years.to_i * 12
      break
    else
      prompt('Invalid entry, please input a valid number!')
    end
  end

  puts "\n-----------------------------------------------"
  puts "Confirming payment calculation for $" + format('%.2f', loan_amount.to_s)
  puts "at an interest rate of #{apr}% for #{years} years.\n\n"

  monthly_pymt = calculation(loan_amount, apr_monthly, months)

  puts "Your monthly payment would be $" + format('%.2f', monthly_pymt.round(2))
  puts "-----------------------------------------------\n\n"

  prompt("Would you like to perform another payment calculation? (y/n)")
  repeat = gets.chomp
  break unless repeat.downcase.start_with?('y')
  system "clear"
end

prompt("Exiting payment calculator... Have a nice day!")
