# exercise2.rb - Lettercase Counter

# Write a method that takes a string, and then returns a hash that contains
# 3 entries: one represents the number of characters in the string that are
# lowercase letters, one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

def letter_case_count(str)
  count = { lowercase: 0, uppercase: 0, neither: 0 }

  str.each_char { |char| count[:lowercase] += 1 if char.match(/[a-z]/) }
  str.each_char { |char| count[:uppercase] += 1 if char.match(/[A-Z]/) }
  str.each_char { |char| count[:neither] += 1 if char.match(/[^a-zA-Z]/) }

  count
end

# Examples
p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
