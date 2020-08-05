# exercise2.rb - HEY YOU!

# String#upcase! is a destructive method, so why does this code print HEY you
# instead of HEY YOU? Modify the code so that it produces the expected output.

def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you') # expected: 'HEY YOU'

=begin
In `line 2` of the `shout_out_to` method we are invoking the chars method on
name, which converts it to an array of character strings, we then call the
.each method on the resultant array and pass in a {} block as an argument.
The upcase! call mutates each element, leaving us with a return value of
['Y', 'O', 'U']. The array is mutated, not the name string object.
=end
