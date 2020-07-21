# exercise7.rb - Name Swapping

# Write a method that takes a first name, a space, and a last name passed as a
# single String argument, and returns a string that contains the last name, a
# comma, a space, and the first name.

def swap_name(str)
  str.split.reverse.join(', ')
end

# Examples
p swap_name('Joe Roberts') == 'Roberts, Joe'
