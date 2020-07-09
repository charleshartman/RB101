# exercise6.rb - Letter Counter (Part 1)

# Write a method that takes a string with one or more space
# separated words and returns a hash that shows the number of
# words of different sizes.

# Words consist of any string of characters that do not include a space.

def word_sizes(str)
  occurrences = Hash.new(0)
  str.split.each do |word|
    occurrences[word.length] += 1
  end
  occurrences
end

# Examples
p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1,
                                                                7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

=begin
input = string
output = hash
data structure: string, iterate array -> hash
algo: - split str into array of words
      - declare new hash
      - iterate through array
        - each.length then
        - if hash key exists already then
        - array << [size] += 1
        - else array << [size] = 1
        - end
=end
