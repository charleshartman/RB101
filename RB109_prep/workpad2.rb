# workpad2.rb
# longest_alpha_sub.rb
# 6 kyu

# Find the longest substring in alphabetical order.

# Example:
# "asdfaaaabbbbcttavvfffffdf" => "aaaabbbbctt"

# There are tests with strings up to 10 000 characters long so your code will
# need to be efficient.

# The input will only consist of lowercase characters and will be at least
# one letter long.

# If there are multiple solutions, return the one that appears first.

def find_all_alpha_substrings(str)
  subs = []

  0.upto(str.length - 1) do |idx1|
    idx1.upto(str.length - 1) do |idx2|
      if str[idx1..idx2].chars.sort.join == str[idx1..idx2]
        subs << str[idx1..idx2]
      end
    end
  end

  subs.uniq
end

def longest(str)
  find_all_alpha_substrings(str).max_by(&:length)
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

=begin

input: string
output: string
data structure: string, array

rules:
  - return longest substring in alpha order
  - if tie return first occurrence in the string
  - input will be all lowercase and at least one char long
  - be efficient

algorithm:
  - iterate through string and find all substrings
       place in array (subs) if sub is alphabetical
  - return longest string in alpha_subs array [max_by length]

=end

# completed in 30m
# refactored to remove unnecessary (alpha_subs) ... now one line
