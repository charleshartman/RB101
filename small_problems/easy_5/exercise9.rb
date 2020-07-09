# exercise9.rb - ddaaiillyy ddoouubbllee

# Write a method that takes a string argument and returns a new string that
# contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character. You may not use
# String#squeeze or String#squeeze!.

# require 'pry'

def crunch(str)
  manual_squeeze = ''
  index = 0
  while index <= str.length - 1
    manual_squeeze << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  manual_squeeze
end

# Examples:
p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
