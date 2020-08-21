# exercise5.rb - Triangle Sides

# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must
# be greater than the length of the longest side, and all sides must have
# lengths greater than 0: if either of these conditions is not satisfied, the
# triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or
# :invalid depending on whether the triangle is equilateral, isosceles,
# scalene, or invalid.

# rubocop:disable Metrics/CyclomaticComplexity

def triangle(num1, num2, num3)
  arr = [num1, num2, num3].sort
  case
  when arr.last > arr[0] + arr[1] || arr.include?(0)
    :invalid
  when arr[0] == arr[1] && arr[1] == arr[2]
    :equilateral
  when arr[0] != arr[1] && arr[1] != arr[2]
    :scalene
  else
    :isosceles
  end
end

# rubocop:enable Metrics/CyclomaticComplexity


# Examples:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# input: 3 floats
# output: return symbol
# data structure: int/floats, symbols, array
# algorithm:
#   - insert values into new array (arr) for rule tests
#   - implement each rule based on the three values
#     - if max value in array is less or equal to two other values summed
#       OR any value in array is zero
#       - then return :invalid
#     - if all three sides are equal
#       - then :equilateral
#     - if 2 sides are equal
#       - then :isosceles
#     - if all three sides are different
#       - then :scalene
