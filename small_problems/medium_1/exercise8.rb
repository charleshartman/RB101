# exercise8.rb - Fibonacci Numbers (Recursion)

# Write a recursive method that computes the nth Fibonacci number, where nth
# is an argument to the method.

# If you find yourself struggling to understand recursion, see this forum post.
# https://launchschool.com/posts/587959fd
# It's worth the effort learning to use recursion.

# That said, this exercise is a lead-in for the next two exercises. It verges
# on the Advanced level, so don't worry or get discouraged if you can't do it
# on your own. Recursion is tricky, and even experienced developers can have
# trouble dealing with it.

def fibonacci(num)
  # ...
end

# Examples:
p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765

=begin
PEDAC
-----
input:  integer
output: integer
rules:  use recursion, method must call itself
explicit requirements:
implicit requirements:
data structure: create an array (fibo) to store sequence
algorithm:
  - create array (fibo) with initial value(s)
  - add first two values get next
  - sort and reverse
  - add first two numbers in array and append
  - repeat until array (fibo) length == initial argument
  - return greatest number in array
=end
