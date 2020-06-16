# exercise7.rb - Odd Lists

# Write a method that returns an Array that contains every other element
# of an Array that is passed in as an argument. The values in the returned
# list should be those values that are in the 1st, 3rd, 5th, and so on
# elements of the argument Array.

def oddities(arr)
  new_array = []
  arr.map.with_index do |element, index|
    new_array << element if index.even?
  end
  new_array
end

# Examples:
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

=begin
input = array
output = array
data structure = array
algo = take an array and return every other element starting with the first, so
indexes 0, 2, 4, etc. --- either push those values into a new array, or mutate
the original array
=end
