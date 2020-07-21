# exercise10.rb - Grocery List

# Write a method which takes a grocery list (array) of fruits with quantities
# and converts it into an array of the correct number of each fruit.

def buy_fruit(arr)
  shop = []
  arr.each { |subs| subs[1].times { shop << subs[0] } }
  shop
end

# Example:
p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas", "bananas"]
