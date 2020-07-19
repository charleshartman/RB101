# exercise4.rb - All Substrings

# Write a method that returns a list of all substrings of a string.
# The returned list should be ordered by where in the string the substring
# begins. This means that all substrings that start at position 0 should
# come first, then all substrings that start at position 1, and so on.
# Since multiple substrings will occur at each position, the substrings
# at a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote
# in the previous exercise.

def leading_substrings(str)
  subs = []
  counter = 0
  while counter < str.size
    subs << str[0..counter]
    counter += 1
  end
  subs
end

def substrings(str)
  result = []
  (0...str.size).each do |index|
    this_sub = str[index..-1]
    result.concat(leading_substrings(this_sub))
  end
  result
end

# Example:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
