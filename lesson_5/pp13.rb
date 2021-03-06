# pp13.rb - Practice Problem 13

# Given the following data structure, return a new array containing
# the same sub-arrays as the original but ordered logically by only
# taking into consideration the odd numbers they contain.

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

def sort_odd(arr)
  arr.sort_by do |subs|
    subs.select do |num|
      num.odd?
    end
  end
end

p sort_odd(arr)

# The sorted array should look like this:
# [[1, 8, 3], [1, 6, 7], [1, 4, 9]]

# input: array with sub-arrays
# output: same, ordered by odd contents only
# data structure: arrays, iterate and sort
# algo: iterate with .sort to return new array
#       how to sort just odd?
