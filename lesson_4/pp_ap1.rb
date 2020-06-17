# pp_ap1.rb - Practice Problem 1

# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values
# are the positions in the array.
=begin
input: array
output: hash
data structures: result is hash names are keys, values are index
 positions from array
algo: iterate through array, perhaps with each_with_index and populate new hash
  then return new hash
=end

hash = {}
flintstones.each_with_index do |name, index|
  hash[name] = index
end

p hash
