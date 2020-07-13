# exercise9.rb - Does My List Include This?

# Write a method named include? that takes an Array and a search
# value as arguments. This method should return true if the
# search value is in the array, false if it is not. You may not
# use the Array#include? method in your solution.

def include?(arr, value)
  search = false
  arr.each { |element| search = true if element == value }
  search
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
nice book solution:

def include?(array, value)
  !!array.find_index(value)
end

=end
