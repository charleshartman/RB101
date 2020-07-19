# exercise4.rb - All Substrings

# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings
# at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote
# in the previous exercise.

def substrings(str)
  new = []
  inner_counter = 0
  outer_counter = 0
  loop do
    while inner_counter < str.size
      new << str[outer_counter..inner_counter]
      inner_counter += 1
    end
    outer_counter += 1
    inner_counter = outer_counter
    break if outer_counter > str.size
  end
  new
end

# Example:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
