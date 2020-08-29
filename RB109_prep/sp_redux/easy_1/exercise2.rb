# exercise2 - Odd

# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

def is_odd?(int)
  int % 2 == 0 ? false : true
end

# Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Keep in mind that you're not allowed to use #odd? or #even? in your solution.

=begin

input: integer
output: boolean true or false
data structure: integers
rules:
  - do not use odd? or even? methods in solution
  - return true if integer is an odd number, otherwise return false
algorithm:
  - if the given integer is divisible by 2 with no remainder then return false
  - otherwise return true

=end
