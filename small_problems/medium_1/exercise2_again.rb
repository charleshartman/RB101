# exercise2_again.rb - Rotation (Part 2)

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# Write a method that can rotate the last n digits of a number. For example:

def rotate_rightmost_digits(number, n)
  new = number.digits.reverse
  (new[0...-n] + [rotate_array(new[-n..-1])].flatten).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
