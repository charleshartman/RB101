# exercise1.rb - Longest Sentence

# Write a program that reads the content of a text file and then prints the
# longest sentence in the file based on number of words. Sentences may end with
# periods (.), exclamation points (!), or question marks (?). Any sequence of
# characters that are not spaces or sentence-ending characters should be treated
# as a word. You should also print the number of words in the longest sentence.

# The longest sentence in example.txt is the last sentence; it is 86 words long.
# (Note that each -- counts as a word.)

# The longest sentence in this pg84.txt is 157 words long.

text = File.read("example.txt")

sentences = text.split(/\.|\?|!/)

longest = 0
l_sentence = ''

sentences.each do |line|
  if line.split(' ').length > longest
    longest = line.split.length
    l_sentence = line
  end
end

puts "The longest sentence in the given file is:\n\n"
puts "#{l_sentence}\n\n"
puts "It is #{longest} words long.\n"
