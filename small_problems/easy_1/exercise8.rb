# exercise8.rb - Array Average

# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

# - create new variable to hold sum integer
# - iterate through each index in supplied array and add to sum integer
# - assign result varible that holds final sum divided by size of array
# - return result

def average(arr)
  sum = 0
  arr.each { |num| sum += num }
  sum / arr.size
end

# Examples:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.
