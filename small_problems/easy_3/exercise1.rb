# exercise1.rb - Searching 101

# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst
# the first 5 numbers.

first_five = []

def prompt(message)
  puts "==> Enter the #{message} number:"
end

def get_num_push(num_store)
  num = gets.chomp.to_i
  num_store << num
end

prompt('1st')
get_num_push(first_five)
prompt('2nd')
get_num_push(first_five)
prompt('3rd')
get_num_push(first_five)
prompt('4th')
get_num_push(first_five)
prompt('5th')
get_num_push(first_five)

prompt('last')
last = gets.chomp.to_i

if first_five.include?(last)
  puts "The number #{last} appears in #{first_five}."
else
  puts "The number #{last} does not appear in #{first_five}."
end
