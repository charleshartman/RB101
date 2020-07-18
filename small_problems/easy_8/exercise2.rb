# exercise2.rb - Madlibs

# Mad libs are a simple game where you create a story template with
# blanks for words. You, or another player, then construct a list
# of words and place them into the story, creating an often silly
# or funny story as a result.

# Create a simple mad-lib program that prompts for a noun, a verb,
# an adverb, and an adjective and injects those into a story that
# you create.

# Example

# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!

puts ''
puts '*** Madlibs I ***'
print 'Enter a noun: '
noun = gets.chomp
print 'Enter a verb: '
verb = gets.chomp
print 'Enter a adjective: '
adjective = gets.chomp
print 'Enter a adverb: '
adverb = gets.chomp
puts ''

puts "This exercise #{verb}s my mind. Why would anyone want a #{noun} " \
     "like that to quickly grow out of a pot of #{adjective} dirt is " \
     "beyond me... but I guess I'll just sit here and consider it " \
     "#{adverb}."
