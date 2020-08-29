# exercise8.rb - Next Featured Number Higher than a Given Value

# A featured number (something unique to this exercise) is an odd number that is
# a multiple of 7, and whose digits occur exactly once each. So, for example, 49
# is a featured number, but 98 is not (it is not odd), 97 is not (it is not a
# multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the
# next featured number that is greater than the argument. Issue an error message
# if there is no next featured number.

def check_num(num)
  num % 7 == 0 && num.odd? && num.digits.reverse.uniq.join.to_i == num
end

def featured(int)
  max_num = 9_876_543_210
  (int + 1).upto(max_num) do |num|
    return num if num % 7 == 0 && num.odd? &&
      num.digits.reverse.uniq.join.to_i == num
  end

  puts "There is no possible number that fulfills the requirements."
end

# Examples:
p featured(12) #== 21
p featured(20) #== 21
p featured(21) #== 35
p featured(997) #== 1029
p featured(1029) #== 1043
p featured(999_999) #== 1_023_547
p featured(999_999_987) #== 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those
# requirements

=begin
input: integer
output: integer
data structutre: integers, arrays

rules:
  - compute the next "featured number" after the given number. FN must:
    - be multiple of 7
    - be odd
    - have only one of each digit (no number greater than 9_876_543_210)

algorithm:
  - initialize variable (max_num) as 9_876_543_210
  - loop from num...max
    return number if it meets the three rules conditions
  - else return error message

=end
