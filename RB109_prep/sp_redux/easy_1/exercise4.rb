# exercise4.rb - How Many?

# Write a method that counts the number of occurrences of each element
# in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

# def count_occurrences(arr)
#   inventory = arr.group_by { |ele| arr.count(ele) }
#   inventory.each_value(&:uniq!)
#   inventory.each_pair { |key, value| puts "#{value} => #{key}" }
# end

def count_occurrences(arr)
  inventory = Hash.new(0)
  arr.each do |element|
    inventory[element] += 1
  end

  inventory.each { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)
# The words in the array are case-sensitive: 'suv' != 'SUV'. ` Once counted,
# print each element alongside the number of occurrences.

# Expected output:
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

=begin

input: array
output: string interpolation from hash
data structure: array, hash, string
algorithm:
  - initialize new hash to hold inventory result, default value of 0
  - iterate through given array and add each item to hash if not present,
    + 1 value if present
  - output result to screen using string interpolation

=end
