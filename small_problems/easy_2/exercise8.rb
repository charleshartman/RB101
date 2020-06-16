# exercise8.rb - Sum or Product of Consecutive Integers

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all
# numbers between 1 and the entered integer.

puts ">> Please enter an integer greater than 0:"
input = gets.chomp.to_i
# sum_result = input * (input + 1) / 2
sum_result = (1..input).inject(:+)
prod_result = (1..input).inject(:*)

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  choice = gets.chomp.downcase

  if choice == 's'
    puts "The sum of the integers between 1 and #{input} is #{sum_result}."
    break
  elsif choice == 'p'
    puts "The product of the integers between 1 and #{input} is #{prod_result}."
    break
  else
    puts "Invalid choice. Please try again..."
    next
  end
end

# sum = (n * (n+1)) / 2
# product = (1..n).inject(:*)
