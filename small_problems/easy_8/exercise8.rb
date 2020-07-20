# exercise8.rb - Double Char (Part 2)

# Write a method that takes a string, and returns a new string in which
# every consonant character is doubled. Vowels (a,e,i,o,u), digits,
# punctuation, and whitespace should not be doubled.

=begin # first
def double_consonants(str)
  double_cons = ''
  str.each_char do |char|
    if char.match(/[^aeiou\d\s\W]/)
      double_cons << char * 2
    else
      double_cons << char
    end
  end
  double_cons
end
=end

# refactored
def double_consonants(str)
  result = ''
  str.each_char do |char|
    char.match(/[^aeiouAEIOU\d\s\W]/) ? result << char * 2 : result << char
  end
  result
end

# Examples:
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
p double_consonants("LOVE YOU") == "LLOVVE YYOU"
