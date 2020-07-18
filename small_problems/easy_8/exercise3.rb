# exercise3.rb  - Leading Substrings

# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string. The return value
# should be arranged in order from shortest to longest substring.

def leading_substrings(str)
  new = []
  counter = 0
  while counter < str.size
    new << str[0..counter]
    counter += 1
  end
  p new
end

# Examples:
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
# I need to remember this book solution:
def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
# I like while loops, but it feels more elegant to not have to
# define an "extra" counter
=end
