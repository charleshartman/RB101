# exercise5.rb - Squaring an Argument

# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument (the square is
# the result of multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# Example:
p square(5) == 25
p square(-8) == 64
