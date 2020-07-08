# exercise5_alt.rb - Clean up the words

# Given a string that consists of some words (all lowercased)
# and an assortment of non-alphabetic characters, write a method
# that returns that string with all of the non-alphabetic characters
# replaced by spaces. If one or more non-alphabetic characters
# occur in a row, you should only have one space in the result (the
# result should never have consecutive spaces).

# code (without regex)

LETTERS = ("a".."z").to_a

def cleanup(str)
  cleaned = []

  str.chars do |char|
    if LETTERS.include?(char)
      cleaned << char
    else
      cleaned << ' ' unless cleaned.last == ' '
    end
  end

  p cleaned .join
end

# Examples:
p cleanup("---what's my +*& line?") == ' what s my line '
