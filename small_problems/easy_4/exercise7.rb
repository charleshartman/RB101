# exercise7.rb - Convert a String to a Number!

# The String#to_i method converts a string of numeric characters (including
# an optional plus or minus sign) to an Integer. String#to_i and the
# Integer constructor (Integer()) behave similarly. In this exercise, you
# will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate
# number as an integer. You may not use any of the methods mentioned above.

# For now, do not worry about leading + or - signs, nor should you worry
# about invalid characters; assume all characters will be numeric.

# You may not use any of the standard conversion methods available in
# Ruby, such as String#to_i, Integer(), etc. Your method should do this the
# old-fashioned way and calculate the result by analyzing the characters in
# the string.
NUMBERS = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
            '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }

def string_to_integer(str)
  numbers = str.chars.map { |num| NUMBERS[num] }
  int = 0
  numbers.each { |num2| int = 10 * int + num2 }
  int
end

# Examples
p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# input: string
# output: integer
# data structure: string or array
# algo: iterate through string or array by character,
#     apply 0-9 ruleset that transforms each element from string to integer
#     return reconstructed number as integer
