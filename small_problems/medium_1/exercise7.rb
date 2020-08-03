# exercise7.rb - Word to Digit

# Write a method that takes a sentence string as input, and returns the same
# string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
# 'five', 'six', 'seven', eight', 'nine' converted to a string of digits.

DIGITS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
           'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
           'eight' => '8', 'nine' => '9' }

def word_to_digit(str)
  DIGITS.each do |alpha, num|
    str.gsub!(/\b#{alpha}\b/, num)
  end
  p str
end

# Example:
p word_to_digit('Please call me at five five five one two three four. Thanks.')\
           == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p word_to_digit('Freight co. telephone four nine eight seven two six four.')\
           == 'Freight co. telephone 4 9 8 7 2 6 4.'

# input: string
# output: string
# data structure/algorithm:
#   - create hash (DIGITS) with 0-9 keys
#   - iterate through HASH and replace any string key match with its value
#   - return str
