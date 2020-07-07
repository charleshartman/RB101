# exercise10.rb - Convert a Signed Number to a String!

# In the previous exercise, you developed a method that converts non-negative
# numbers to strings. In this exercise, you're going to extend that method
# by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string
# representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

NUMBERS_TO_S = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
                 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  string = ''
  int *= -1 if int < 0
  int.digits.reverse!.each { |num| string << NUMBERS_TO_S[num] }
  string
end

def signed_integer_to_string(int)
  signature = ''
  if int > 0 then signature = "+#{integer_to_string(int)}"
  elsif int < 0 then signature = "-#{integer_to_string(int)}"
  else signature = integer_to_string(int)
  end
  signature
end

=begin # Book Solution very nice

def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

=end

# Examples
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
