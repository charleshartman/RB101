# exercise4.rb - How Many?
# Write a method that counts the number of occurrences of
# each element in a given array.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(input)
  counter_hash = Hash.new
  input.each do |word|
    if counter_hash.key?(word)
      counter_hash[word] += 1
    else
      counter_hash[word] = 1
    end
  end
  counter_hash.each_pair { |key, value| puts "#{key} => #{value}" }
end

count_occurrences(vehicles)

# The words in the array are case-sensitive: 'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurrences.

# Expected output:

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

# .plan
# declare a new hash
# loop through array
# if element in array is not present in hash add it with key as name of element
# and value (counter) of 1
# else if element is already present in the array add another occurrence to the
# value of that key (value += 1)
# return value of new hash (p)

=begin
Book Solution
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end

=end
