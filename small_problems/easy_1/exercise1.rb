
# exercise 1 - repeat yourself

# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Example:
# repeat('Hello', 3)

def repeat(message, number)
  while number > 0
    puts message
    number -= 1
  end
end

repeat('Hello', 10)
repeat('Well pleyed, sir.', 3)

# book solution better
# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end
