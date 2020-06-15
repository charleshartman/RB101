# exercise1.rb - How old is Teddy?

# Build a program that randomly generates and prints Teddy's age. To get
# the age, you should generate a random number between 20 and 200.

# Example Output
# Teddy is 69 years old!

def how_old?(name = 'Teddy')
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts 'Please enter a name:'
name = gets.chomp

how_old?(name)

# Further Exploration
# Modify this program to ask for a name, and then print the age for that
# person. For an extra challenge, use "Teddy" as the name if no name is entered.
