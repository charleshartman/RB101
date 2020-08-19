# exercise3.rb - Lettercase Percentage Ratio

# In the easy exercises, we worked on a problem where we had to count the number
# of uppercase and lowercase characters, as well as characters that were neither
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 3
# entries: one represents the percentage of characters in the string that are
# lowercase letters, one the percentage of characters that are uppercase
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

# rubocop:disable Layout/LineLength

def letter_percentages(str)
  result_percentages = {}
  result_percentages[:lowercase] = 100 / (str.length / (str.count 'a-z').to_f)
  result_percentages[:uppercase] = 100 / (str.length / (str.count 'A-Z').to_f)
  result_percentages[:neither] = 100 / (str.length / (str.count '^a-zA-Z').to_f)

  result_percentages
end

# Examples:
p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# rubocop:enable Layout/LineLength

=begin
input: string
output: hash with three key-value pairs
rules: count uppercase, lowercase, other_chars (including whitespace)
data structure: string, hash
math: 100 / (str.length / (str.count '^a-z').to_f).round
algorithm:
 - initialize new hash (result_percentages)
 - calculate each category occurences and add to hash
    - count a-z -> lowercase and add to hash
    - count A-Z -> uppercase and add to hash
    - count ^a-zA-Z -> neither and add to hash
  - return result_percentages hash
=end
