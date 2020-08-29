# exercise1.rb - Write a method that takes two arguments, a string and a
# positive integer, and prints the string as many times as the integer
# indicates.

def repeat(str, num)
  num.times { puts str }
end

# Example:
repeat('Hello', 3)

=begin

input: string
output: strings printed to screen
algorithm:
  - define a method that takes two arguments and prints the given string the 
    given number of times

=end
