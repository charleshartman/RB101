# exercise4.rb - When will I Retire?
# Build a program that displays when the user will retire and how many
# years she has to work till retirement.

# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

require 'date'
YEAR = Date.today.year

print 'What is yout age? '
age = gets.chomp.to_i
print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

ytr = (retire_age - age)

puts
puts "It's #{YEAR}. You will retire in #{YEAR + ytr}"
puts "You have only #{ytr} years of work to go!"

# could have used Time.now.year... just learned about it!
