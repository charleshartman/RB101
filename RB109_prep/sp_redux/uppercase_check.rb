
# uppercase_check.rb

# Write a method that takes a string argument, and returns true if all of the
# alphabetic characters inside the string are uppercase, false otherwise. 
# Characters that are not alphabetic should be ignored.

def uppercase?(str)
  chars = str.chars
  chars.each do |char|
    if char.match?(/[A-Z]/)
      next
    elsif char.match?(/[a-z]/)
      return false
    end
  end

  true
end

# Examples:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin

problem:
  - return true or false based on if all alphabetic characters in a string are
    uppercase or not
  - ignore non-alphabetic chars

input: string
output: boolean true or false
data structure: string, array

algorithm:
  - convert string to array (chars)
  - iterate through (chars)
  - if char is included in the alphabet
    - is it uppercase?
      - if so, continue
      - if not, return false
  - if we make it through all iterations without returning false
  - then return true

some logic:
  - if alphabetic range A-Za-z includes char AND A-Z includes char
  - 'A'.match?(/[a-zA-Z]/) && 'A'.match?(/[A-Z]/)

=end

# completed in 20m
