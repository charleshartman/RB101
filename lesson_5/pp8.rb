# pp8.rb - Practice Problem 8

# Using the each method, write some code to output all of the vowels
# from the strings.

hsh = { first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'],
        fourth: ['over', 'the', 'lazy', 'dog'] }

vow = []
hsh.each_value do |values|
  values.each do |value|
    vow << value.scan(/[aeiou]/)
  end
end
puts vow

# book solution - better
vowels = "aeiou"

hsh.each do |_key, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end
