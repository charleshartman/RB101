# exercise5.rb - Clean up the words

# Given a string that consists of some words (all lowercased)
# and an assortment of non-alphabetic characters, write a method
# that returns that string with all of the non-alphabetic characters
# replaced by spaces. If one or more non-alphabetic characters
# occur in a row, you should only have one space in the result (the
# result should never have consecutive spaces).

# code (with regex)
def cleanup(str)
  str.gsub(/[^a-z]/i, ' ').squeeze(' ')
  # str.gsub(/[^a-z]/, ' ').gsub(/\s\s+/, ' ')
end

# Examples:
p cleanup("---what's my +*& line?") == ' what s my line '
