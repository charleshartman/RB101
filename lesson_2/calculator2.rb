# calculator2.rb
# refactor and add features

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operaton_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to calculator2.rb! Enter your name:')

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt('Make sure to enter a valid name, please.')
  else
    break
  end
end

prompt("Hello, #{name}.")

loop do # main loop
  num1 = ''
  loop do
    prompt('Please enter the first number:')
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt('Sorry, friend, that does not look like a valid number.')
    end
  end

  num2 = ''
  loop do
    prompt('Please enter the second number:')
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt('Sorry, friend, that does not look like a valid number.')
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
        1) add
        2) subtract
        3) multiply
        4) divide
  MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('Please choose 1, 2, 3, or 4')
    end
  end

  prompt("#{operaton_to_message(operator)} the two numbers...")

  result =  case operator
            when '1'
              num1.to_i + num2.to_i
            when '2'
              num1.to_i - num2.to_i
            when '3'
              num1.to_i * num2.to_i
            when '4'
              num1.to_f / num2.to_f
            end

  prompt("The result is #{result}.")

  prompt("Do you wish to perform another calculation? (Y to calclate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")
