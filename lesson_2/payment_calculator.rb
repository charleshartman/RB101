# payment_calculator.rb

# pseudocode
# write welcome
# gather information
# get loan amount (dollars), convert to float
# get APR (convert to float)
# convert APR to monthly
# get duration (years)
# convert to months
# perform final calculation { m = p * (j / (1 - (1 + j)**(-n))) }
# report results

def prompt(message)
  puts "=> #{message}"
end

prompt('Welcome to Payment Calculator')

prompt('Please enter loan amount:')
loan_amount = gets.chomp.to_f

prompt('Please enter APR as a percentage (e.g. 5% or 3.25%):')
apr = gets.chomp.to_f
apr_monthly = apr / 100 / 12

prompt('Lastly, please enter duration (in years):')
years = gets.chomp.to_i
months = years * 12

puts "\n-----------------------------------------"
puts "Confirming payment calculation for $" + format('%.2f', loan_amount.to_s)
puts "at an interest rate of #{apr}% for #{years} years.\n\n"

# puts "#{years} years converted to #{months} months."
# puts "#{apr}% converted to a monthly rate of #{apr_monthly.round(5)}."

monthly_pymt = loan_amount * (apr_monthly / (1 - (1 + apr_monthly)**(-months)))

puts "Your monthly payment would be $" + format('%.2f', monthly_pymt.round(2))
