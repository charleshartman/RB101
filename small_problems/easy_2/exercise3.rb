# exercise3.rb - Tip calculator
# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

# Example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

puts "Please enter the bill amount:"
bill = gets.chomp.to_f
puts "Please enter the gratuity % rate:"
tip_percent = gets.chomp.to_f / 100
tip = (bill * tip_percent).round(2)
bill_total = (bill + tip).round(2)

# puts "The tip is $#{tip}"
# puts "The total is $#{bill_total}"
puts "The tip is $" + format('%.2f', tip.to_s)
puts "The total is $" + format('%.2f', bill_total.to_s)
