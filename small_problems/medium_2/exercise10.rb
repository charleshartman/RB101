# exercise10.rb - Sum Square - Square Sum

# Write a method that computes the difference between the square of the sum
# of the first n positive integers and the sum of the squares of the first
# n positive integers.

def sum_square_difference(int)
  positive_ints = (1..int).to_a
  squared_sum = positive_ints.inject(:+)**2
  summed_squared = positive_ints.map { |num| num**2 }.sum
  difference = squared_sum - summed_squared
  difference
end

# Examples:
p sum_square_difference(3) == 22
# -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

=begin

input: integer
output: integer
data structure: integer, array

rules:
  - compute the difference in the result of squaring the first (n) positive
    integers and the square of each positive integer summed

algorithm:
  - initialize variable (positive_ints) and assign to it the range of integers
    from 1 to n
  - initialize variable (squared_sum) and perform square operation of the sum of
    the contents of (positive_ints)
  - initialize variable (summed_squared) and perform operation of squaring each
    element and summing the results
  - finally, initialize variable (difference) and assign to it the result of
    subtracting (summed_squared) from (squared_sum)
  - return (difference)

=end
