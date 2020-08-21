# exercise4.rb - Matching Parentheses?

# Write a method that takes a string as argument, and returns true if all
# parentheses in the string are properly balanced, false otherwise. To be
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(str)
  arr = str.chars.select { |char| char == '(' || char == ')' }
  return false if arr.first == ')' || arr.last == '('
  return true if arr.count('(') == arr.count(')')
  false
end

# Examples:
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
p balanced?('Will this ((test)()) fail?') == true

# Note that balanced pairs must each start with a (, not a ).

# input: string
# output: boolean value true or false
# data structure: string, array
# rules:
#   - matching pairs of parentheses, must begin with opening '('
# algorithm:
#   - convert string to array (arr)
#   - insert all occurrences of ( or ) into array
#   - iterate though array, if ')' occurs before '(' return false
#   - otherwise count occurrences of '(' and ')'
#   - if they are equal return true
#   - else return false

# My solution works on test cases, but is not robust and fails on a string like
# 'This ((Test)()) will fail.' for example. The book solution is more elegant:

def also_balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

p also_balanced?('Will this ((test)()) fail?') == true
