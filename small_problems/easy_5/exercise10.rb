# exercise10.rb - Bannerizer

# Write a method that will take a short line of text, and print it within a box.

def print_in_box(str)
  width = (str.length + 2)
  puts '+' + '-' * width + '+'
  puts '|' + ' ' * width + '|'
  puts '|' + ' ' + str + ' ' + '|'
  puts '|' + ' ' * width + '|'
  puts '+' + '-' * width + '+'
end

# Example:
print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
# You may assume that the input will always fit in your terminal window.
print_in_box("You're a really Ruby genius, bro.")
