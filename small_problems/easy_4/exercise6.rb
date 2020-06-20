# exercise6.rb - Running Totals

# Write a method that takes an Array of numbers, and returns an
# Array with the same number of elements, and each element has the
# running total from the original Array.

def running_total(numbers)
  sum = 0
  numbers.map { |value| sum += value }
end

# Examples:
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

=begin
input: Array
output: Array
data structure: Array (map)
algo: iterate over array with .map to transform
      each index is sum of itself and preceding index
      counter for index... index [0] no add
=end
