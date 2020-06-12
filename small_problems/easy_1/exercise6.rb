# exercise6.rb - Reverse It (Part 2)

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters
# reversed. Each string will consist of only letters and spaces. Spaces
# should be included only when more than one word is present.

def reverse_words(string)
  reverso = string.split.each do |word|
    word.reverse! if word.size >= 5
  end
  reverso.join(' ')
end

# Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

=begin
Book Solution
def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

=end
