# exercise2.rb - Delete vowels
# Write a method that takes an array of strings, and returns an array of the
# same string values, except with the vowels (a, e, i, o, u) removed.

# VOWELS = 'aeiouAEIOU'

def remove_vowels(arr)
  arr.map { |subs| subs.delete('aeiouAEIOU') }
end

# Example:
p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
