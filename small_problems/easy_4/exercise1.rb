# exercise1.rb - Short Long Short

# Write a method that takes two strings as arguments, determines the
# longest of the two strings, and then returns the result of concatenating
# the shorter string, the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

def short_long_short(str1, str2)
  if str1.size > str2.size
    str2.concat(str1, str2)
  else
    str1.concat(str2, str1)
  end
end

# Examples:
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"

# input: two strings
# output: one string (concat shorter-other-shorter)
# rules: shorter than othen than shorter
# algo: detemine length of each string with .size
#       then concat
