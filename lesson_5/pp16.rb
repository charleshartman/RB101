# pp16.rb - Practice Problem 16

# A UUID is a type of identifier often used as a way to uniquely identify
# items...which may not all be created by the same system. That is, without
# any form of synchronization, two or more separate computer systems can create
# new items and label them with a UUID with no significant chance of stepping
# on each other's toes.

# It accomplishes this feat through massive randomization. The number
# of possible UUID values is approximately 3.4 X 10E38.

# Each UUID consists of 32 hexadecimal characters, and is typically broken
# into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.
SIXTEEN = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
            6 => '6', 7 => '7', 8 => '8', 9 => '9', 10 => 'a',
            11 => 'b', 12 => 'c', 13 => 'd', 14 => 'e', 15 => 'f' }

def uuid_creator
  arr = []
  36.times do
    arr << SIXTEEN[rand(0..15)]
  end
  arr[8] = "-"
  arr[13] = "-"
  arr[18] = "-"
  arr[23] = "-"
  arr.join
end

10.times do
  puts uuid_creator
end
# create a hash(dictionary) of integer keys and 0-9, a-f values
# rand(0..15), match result to dictionary, build out array of 32
#   (36 with hyphen string values)
# join array
# return result (UUID string)
