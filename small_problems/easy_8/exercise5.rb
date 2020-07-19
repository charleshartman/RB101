# exercise5.rb - Palindromic Substrings

# Write a method that returns a list of all substrings of a string that
# are palindromic. That is, each substring must consist of the same
# sequence of characters forwards as it does backwards. The return
# value should be arranged in the same sequence as the substrings appear
# in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the
# previous exercise.

# For the purposes of this exercise, you should consider all characters
# and pay attention to case; that is, "AbcbA" is a palindrome, but neither
# "Abcba" nor "Abc-bA" are. In addition, assume that single characters are
# not palindromes.

def leading_substrings(str)
  subs = []
  counter = 0
  while counter < str.size
    subs << str[0..counter]
    counter += 1
  end
  subs
end

def substrings(str)
  result = []
  (0...str.size).each do |index|
    this_sub = str[index..-1]
    result.concat(leading_substrings(this_sub))
  end
  result
end

def palindromes(str)
  test_pool = substrings(str)
  results_pool = []
  test_pool.each do |subs|
    results_pool << subs if subs.reverse == subs && subs.length > 1
  end
  results_pool
end

# Examples:
p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
