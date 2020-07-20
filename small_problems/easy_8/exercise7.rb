# exercise7.rb - Double Char (Part 1)

# Write a method that takes a string, and returns a new string
# in which every character is doubled.

def repeater(str)
  double_chars = ''
  str.each_char { |char| double_chars << char * 2 }
  double_chars
end

# Examples:
p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
