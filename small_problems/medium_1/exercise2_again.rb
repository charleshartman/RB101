# exercise2_again.rb - Rotation (Part 2)

def rotate_array(arr)
  arr[1..-1] << arr[0]
end

# Write a method that can rotate the last n digits of a number. For example:

def rotate

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917