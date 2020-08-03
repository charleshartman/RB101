# exercise5.rb - Diamonds!

# Write a method that displays a 4-pointed diamond in an n x n grid, where n
# is an odd integer that is supplied as an argument to the method. You may
# assume that the argument will always be an odd integer.

# input: integer
# output: series of strings created by iteration
# data structure: array of integers representing lines
# algorithm:
#   - create a new array (lines)
#   - generate a series of odd integers between the passed argument and 1
#   - push those numbers to the new lines array (incl argument)
#   - reverse series and merge those to the lines array, do not duplicate
#       middle line
#   - output each line centered on width of argument integer

def diamond(int)
  lines = []
  (1..int).each { |num| lines << num if num.odd? }
  (1..(int - 1)).reverse_each { |num| lines << num if num.odd? }
  lines.each { |num| puts ("*" * num).center(int) }
end

# Examples:
diamond(1)
diamond(3)
diamond(9)
diamond(21)
