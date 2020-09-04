# exercise9.rb - Bubble Sort

# Bubble Sort is one of the simplest sorting algorithms available. It isn't an
# efficient algorithm, but it's a great exercise for student developers. In this
# exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array.
# On each pass, each pair of consecutive elements is compared. If the first of
# the two elements is greater than the second, then the two elements are
# swapped. This process is repeated until a complete pass is made without
# performing any swaps; at that point, the Array is completely sorted.

# We can stop iterating the first time we make a pass through the array without
# making any swaps; at that point, the entire Array is sorted.

# For further information, including pseudo-code that demonstrates the algorithm
# as well as a minor optimization technique, see the Bubble Sort wikipedia page.

# Write a method that takes an Array as an argument, and sorts that Array using
# the bubble sort algorithm as just described. Note that your sort will be
# "in-place"; that is, you will mutate the Array passed as an argument. You may
# assume that the Array contains at least 2 elements.

def bubble_sort!(arr)
  1.upto(arr.length - 1) do
    idx = 0

    while idx < arr.length - 1
      arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
      idx += 1
    end
  end
  arr
end

# Examples:
array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

=begin

input: array
output: sorted array
data structure: arrays
algorithm:
  - iterate through array sorting two elements each time in succession
    - mutate array as sorting occurs
    - assign returned array to variable each time to use as historical
      comparision
  - break with complete iteration is accomplished without any changes being made
  - return sorted array

array[0], array[1] = array[1], array[0] if array[0] > array[1]
arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx] if arr[idx] > arr[idx + 1]
=end
