# exercise9.rb - ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use
# String#squeeze or String#squeeze!.
require 'pry'

def crunch(str)
  indie = str.chars
  indie.each_with_index do |char, idx|
    # binding.pry
    indie.delete_at(idx) if char[idx] == char[idx + 1]
    # p indie
  end
  p indie.join
end

# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
