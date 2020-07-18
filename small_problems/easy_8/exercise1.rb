# exercise1.rb - Sum of Sums

# Write a method that takes an Array of numbers and then returns
# the sum of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.

def sum_of_sums(arr)
  total = 0
  counter = arr.length
  while counter.positive?
    num = arr.inject(:+)
    total += num
    break if arr.length == 1

    arr.pop
  end
  total
end

# Examples:
p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
