# payment_calculator_v3.rb
# add config file for learning purposes

require 'yaml'
MESSAGES = YAML.load_file('payment_calc_messages.yml')

system "clear" # does nothing on windows, but good on Mac/Linux

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
  input != '0' && input != '0.0'
end

def valid_entry?(input)
  float?(input) && check_zero?(input)
end

prompt(MESSAGES['welcome'])

loop do
  loan_amount = ''
  loop do
    prompt(MESSAGES['get_loan_amount'])
    loan_amount = gets.chomp

    if valid_entry?(loan_amount)
      loan_amount = loan_amount.to_f
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  apr = ''
  apr_monthly = ''
  loop do
    prompt(MESSAGES['get_apr'])
    apr = gets.chomp

    if valid_entry?(apr)
      apr_monthly = apr.to_f / 100 / 12
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  years = ''
  months = ''
  loop do
    prompt(MESSAGES['get_duration'])
    years = gets.chomp

    if valid_entry?(years)
      months = years.to_i * 12
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  system "clear" # does nothing on windows, but good on Mac/Linux

  puts "\n-----------------------------------------------"
  puts(MESSAGES['confirm'] + format('%.2f', loan_amount.to_s))
  puts(MESSAGES['conf2'] + apr + MESSAGES['conf3'] + years + MESSAGES['conf4'])
  puts ''
  monthly_pymt = calculation(loan_amount, apr_monthly, months)

  puts(MESSAGES['payment'] + format('%.2f', monthly_pymt.round(2)))
  puts "-----------------------------------------------\n\n"

  prompt(MESSAGES['repeat'])
  repeat = gets.chomp
  break unless repeat.downcase.start_with?('y')
  system "clear"
end

prompt(MESSAGES['goodbye'])
