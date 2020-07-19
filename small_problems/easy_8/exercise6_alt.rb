# exercise6_alt.rb - fizzbuzz

# Write a method that takes two arguments: the first is the starting
# number, and the second is the ending number. Print out all numbers
# between the two numbers, except if a number is divisible by 3, print
# "Fizz", if a number is divisible by 5, print "Buzz", and finally if
# a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(num1, num2)
  result = []
  (num1..num2).each do |num|
    result << fizzbuzz_return(num)
  end
  puts result.join(', ')
end

def fizzbuzz_return(num)
  case
  when num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  when num % 3 == 0
    'Fizz'
  when num % 5 == 0
    'Buzz'
  else
    num
  end
end

# Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz,
#                    13, 14, FizzBuzz
fizzbuzz(10, 75)
