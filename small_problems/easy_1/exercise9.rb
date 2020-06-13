# exercise9.rb - Sum of Digits
# Write a method that takes one argument, a positive integer, and returns
# the sum of its digits.

def sum(int)
  numbers = int.digits
  result = 0
  numbers.each { |num| result += num }
  result
end

# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

=begin
input : integer
output: integer
data structure: int to array to int
algorithm:  take a positive int and convert to array (digits) = arr
            assign variable to hold the sum
            iterate through the array and sum all the digits
            return sum
=end
