# pp1.rb - Practice Problem 1

# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

def reverse_and_descend(arr)
  arr.sort do |a, b|
    b.to_i <=> a.to_i
  end
end

p reverse_and_descend(arr)
