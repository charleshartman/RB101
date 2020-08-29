# workpad1.rb

# equal_sides_array.rb

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

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0, 0, 0, 0, 0]) == 0
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
p find_even_index(Array(-100..-1)) == -1

# rules:
# - return the index at which the numbers to the left of the index are equal
#   to the numbers to the right of the index
# - if this never happens return -1

# input: array of integers,  each greater than 0 and less than 1000
# output: integer (index position)

# data structure: array
# algorithm:
# => initialize variable (index) to hold counter/return value
# => initialize two arrays to hold partitioned values (left,  right)
# => loop through array and at each index:
#    - (manually) partition array to (left) and (right) based on index position
#    - sum left and right arrays and compare
#    - return index if left and right are equal
#    - else increment (index) and next
# => if no equality of left and right is found
#    - return -1
