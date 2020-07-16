# exercise4.rb - Swap Case

# Write a method that takes a string as an argument and returns a new
# string in which every uppercase letter is replaced by its lowercase
# version, and every lowercase letter by its uppercase version. All other
# characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.
def swapcase(str)
  swapperroo = ''
  str.each_char do |char|
    if char.match(/[a-z]/)
      swapperroo << char.upcase
    elsif char.match(/[A-Z]/)
      swapperroo << char.downcase
    else
      swapperroo << char
    end
  end
  swapperroo
end

# Example:
p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
