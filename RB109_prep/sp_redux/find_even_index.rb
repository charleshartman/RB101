# find_even_index.rb

# You are going to be given an array of integers. Your job is to take that array
# and find an index N where the sum of the integers to the left of N is equal to
# the sum of the integers to the right of N. If there is no index that would
# make this happen, return -1.

# For example:

# Let's say you are given the array [1,2,3,4,3,2,1]:
# Your method will return the index 3, because at the 3rd position of the array
# the sum of left side of the index [1,2,3] and the sum of the right side of the
# index [3,2,1] both equal 6.

# Another one:
# You are given the array [20,10,-80,10,10,15,35]
# At index 0 the left side is []
# The right side is [10,-80,10,10,15,35]
# They both are equal to 0 when added. (Empty arrays are equal to 0 in this problem)
# Index 0 is the place where the left side and right side are equal.

def find_even_index(arr)
  counter = 0
  while counter < arr.length
    left = []
    right = []

   arr.each_index do |index|
      left << arr[index] if index < counter
      right << arr[index] if index > counter
    end

    return counter if left.sum == right.sum
    counter += 1
  end
  -1
end


p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3

=begin

problem:
  - find the index in the given array for which the elements to the left of the 
    index and the elements to the right of the index each sum to the same number
  - if this is not true for any index in the given array return -1

input: array
output: integer
data structure: array, integers

algorithm:
  - initialize variable (counter) to hold counter/return value
  - initialize two arrays to hold partitioned values (left, right)
  - iterate through each index of array testing if sum of elements before index 
    and sum of elements after index are equal
    - push elements prior to current index into left
    - push elements after current index into right
    - sum left and right and compare 
    - if equal return current index
  - if all iterations complete without return 
    - return -1 

=end