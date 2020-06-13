# exercise7.rb - Stringy Strings

# Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s, always starting with 1. The length of
# the string should match the given integer.

def stringy(input)
  output = ''
  while input > 0
    if output == '' || output[-1] == '0'
      output << '1'
    else
      output << '0'
    end
    input -= 1
  end
  output
end

# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.
