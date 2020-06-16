# exercise3.rb - Counting the Number of Characters

# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

print 'Please enter a word or multiple words: '
input = gets.chomp

# char_count = input.split.join.size
char_count = input.delete(' ').size

puts "There are #{char_count} characters in \"#{input}.\""
