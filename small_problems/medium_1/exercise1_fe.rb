# exercise1_fe.rb - Rotation (Part 1)

# Write a method that rotates an array by moving the first element to the end
# of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_integer(int)
  rotate_array(int.to_s.split('')).join.to_i
end

def rotate_string(str)
  rotate_array(str.split('')).join
end

# Example:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

p rotate_integer(12345) == 23451
p rotate_integer(0) == 0
p rotate_integer(72) == 27

p rotate_string('charles') == 'harlesc'
p rotate_string('not me, bro') == 'ot me, bron'
