# exercise5.rb - Greeting a user

# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.

print "What is your name, user? "
name = gets.chomp

if name[-1] == '!'
  puts "HELLO, #{name.chop.upcase}... WHY ARE YOU SCREAMING?"
else
  puts "Hello, #{name.capitalize}."
end
