# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

puts 'Welcome to calculator.rb!'

puts 'Please enter the first number:'
num1 = gets.chomp
puts 'Please enter the second number:'
num2 = gets.chomp

puts 'Please input the operation you desire:'
puts '1) add, 2) subtract, 3) multiply, 4) divide'

op = gets.chomp

if op == '1'
  result = num1.to_i + num2.to_i
elsif op == '2'
  result = num1.to_i - num2.to_i
elsif op == '3'
  result = num1.to_i * num2.to_i
else
  result = num1.to_f / num2.to_f
end

puts "The result is #{result}."
