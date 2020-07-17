# exercise9.rb - Multiply All Pairs

# Write a method that takes two Array arguments in which each Array
# contains a list of numbers, and returns a new Array that contains
# the product of every pair of numbers that can be formed between the
# elements of the two Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(arr1, arr2)
  result = []
  index = 0
  while index < arr2.length
    arr1.each do |num|
      result << num * arr2[index]
    end
    index += 1
  end
  p result
  p result.sort
end

# Examples:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# input: two arrays of numbers
# output: one SORTED array of numbers
# data structure: arrays, integer math
# algorithm:  - declare new variable pointing to empty array object
#             - iterate through arr1, multiplying each element by each
#                 element in arr2
#             - ascending sort (default) new array
#             - return new array
