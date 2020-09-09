# grocery_list.rb

# Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

def buy_fruit(arr)
  list = []
  arr.each do |sub|
    sub[1].times { list << sub[0] }
  end

  p list
end
# Example:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
             ["apples", "apples", "apples", "orange", "bananas","bananas"]

=begin

problem:
  - given array includes two element sub-arrays, item and number, we want to
    return a new array where the item is included the given number number of 
    times

input: array
output: array
data structure: array

algorithm:
  - initialize variable for new array (list)
  - iterate through given array, pushing the first element in each sub-array
    into (list) the second element number of times
  - return (list)

=end