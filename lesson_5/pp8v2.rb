# pp8.rb - Practice Problem 8

# Using the each method, write some code to output all of the vowels
# from the strings.

hsh = { first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog'] }

VOWELS = 'aeiou'

hsh.each do |_, values|
  values.each do |value|
    value.chars.each do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
