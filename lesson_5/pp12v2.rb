# pp12v2.rb - Practice Problem 12

# Given the following data structure, and without using the Array#to_h
# method, write some code that will return a hash where the key is the
# first item in each sub array and the value is the second item.

arr =
  [[:a, 1], ['b', 'two'], ['sea', { c: 3 }], [{ a: 1, b: 2, c: 3, d: 4 }, 'D']]

# expected return value:
# {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# input: array with sub-arrays, some of which contain multi-element hashes
# output: hash (flat)
# data structure: iterate through array and subs and build new hash
# algo: create new hash and assign to variable 'hash'
#      for each sub-array assign first element to key and following elements to
#      value then push to new hash

making_hash = {}

arr.each do |key, value|
  making_hash[key] = value
end

p making_hash
