# exercise4.rb - Letter Swap

# Given a string of words separated by spaces, write a method that takes
# this string of words and returns a string in which the first and last
# letters of every word are swapped.

# You may assume that every word contains at least one letter, and that
# the string will always contain at least one word. You may also assume
# that each string contains nothing but words and spaces

def switcheroo(pieces)
  pieces.map do |sub_array|
    first_char = sub_array.shift
    last_char = sub_array.pop
    sub_array.unshift(last_char)
    sub_array.push(first_char)
  end
end

def swap(str)
  verso = str.split
  pieces = verso.map(&:chars)
  switcheroo(pieces)
  reunite = pieces.map(&:join)
  reunite.join(' ')
end

# Examples:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
