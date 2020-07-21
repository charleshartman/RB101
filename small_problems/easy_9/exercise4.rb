# exercise4.rb - Counting Up

# Write a method that takes an integer argument, and returns an Array
# of all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that
# is greater than 0.

# first thought
# def sequence(int)
#   arr = []
#   1.upto(int) { |num| arr << num }
#   arr
# end

# second thought
def sequence(int)
  (1..int).inject([]) { |arr, num| arr << num }
end

# book solution much simpler
# def sequence(number)
#   (1..number).to_a
# end

# Examples:
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
