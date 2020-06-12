# exercise7.rb - Stringy Strings

# Write a method that takes one argument, a positive integer, and returns
# a string of alternating 1s and 0s, always starting with 1. The length of
# the string should match the given integer.

def stringy(num)
  output = ''
  if num.odd?
    while num > 0
      if num.odd?
        output << '1'
      else
        output << '0'
      end
      num -= 1
    end
  else
    while num > 0
      if num.even?
        output << '1'
      else
        output << '0'
      end
      num -= 1
    end
  end
  output
end

# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.
