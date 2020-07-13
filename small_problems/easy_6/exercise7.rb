# exercise7.rb - Halvsies

# Write a method that takes an Array as an argument, and returns two Arrays
# (as a pair of nested Arrays) that contain the first half and second half
# of the original Array, respectively. If the original array contains
# an odd number of elements, the middle element should be placed in the
# first half Array.

def halvsies(arr)
  new = []
  bound = arr.length

  if bound.even?
    bound = (arr.length / 2)
  else
    bound = (arr.length / 2) + 1
  end

  new << arr[0, bound]
  new << arr[bound, bound]
end

# Examples:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
