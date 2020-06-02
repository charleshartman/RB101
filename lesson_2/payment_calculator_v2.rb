# payment_calculator_v2.rb

# refactor and add checks to validate inputs

def prompt(message)
  puts "=> #{message}"
end

def calculation(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
  m
end

def valid_entry?(input)
  input > 0
end

prompt('Welcome to Payment Calculator')

loop do
  loan_amount = ''
  loop do
    prompt('Please enter loan amount:')
    loan_amount = gets.chomp.to_f

    if valid_entry?(loan_amount)
      break
    else
      prompt('Invalid entry, please input a positive number!')
    end
  end

  apr = ''
  apr_monthly = ''
  loop do
    prompt('Please enter APR as a percentage (e.g. 5% or 3.25%):')
    apr = gets.chomp.to_f

    if valid_entry?(apr)
      apr_monthly = apr / 100 / 12
      break
    else
      prompt('Invalid entry, please input a positive number!')
    end
  end

  years = ''
  months = ''
  loop do
    prompt('Lastly, please enter duration (in years):')
    years = gets.chomp.to_i

    if valid_entry?(years)
      months = years * 12
      break
    else
      prompt('Invalid entry, please input a positive number!')
    end
  end

  puts "\n-----------------------------------------------"
  puts "Confirming payment calculation for $" + format('%.2f', loan_amount.to_s)
  puts "at an interest rate of #{apr}% for #{years} years.\n\n"

  # puts "#{years} years converted to #{months} months."
  # puts "#{apr}% converted to a monthly rate of #{apr_monthly.round(5)}."

  monthly_pymt = calculation(loan_amount, apr_monthly, months)

  puts "Your monthly payment would be $" + format('%.2f', monthly_pymt.round(2))
  puts "-----------------------------------------------\n"

  prompt("Would you like to perform another payment calculation? (Y/N)")
  repeat = gets.chomp
  break unless repeat.downcase.start_with?('y')
end
