# pp_ap7.rb - Practice Problem 7

# Create a hash that expresses the frequency with which each letter occurs in
# this string:

statement = "The Flintstones Rock"
# for example:
# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

# pseudocode
# - create new hash to hold results
# - create new variable that holds array of chars, statement.chars
# - iterate through the array adding new keys (chars) and values (occurances)
#     to a new hash
#   - if key is not present in hash add key and value of one
#   - else key value += 1
# - p results hash

results = {}
char_array = statement.delete(' ').chars.sort

char_array.each do |char|
  if results.include?(char)
    results[char] += 1
  else
    results[char] = 1
  end
end

p results

=begin # book solution

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

=end
