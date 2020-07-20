# exercise9.rb - Reverse the Digits In a Number

# Write a method that takes a positive integer as an argument and returns
# that number with its digits reversed. Examples:

def reversed_number(number)
  number.digits.join.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1

# Don't worry about arguments with leading zeros - Ruby sees those as octal
# numbers, which will cause confusing results. For similar reasons, the
# return value for our fourth example doesn't have any leading zeros.

=begin
# book solution
def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

=end
