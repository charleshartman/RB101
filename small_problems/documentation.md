
### Class and Instance Methods

Locate the ruby documentation for methods File::path and File#path. How are they different?

*File::path*
path(path) → string
Returns the string representation of the path
```ruby
File.path("/dev/null")          #=> "/dev/null"
File.path(Pathname.new("/tmp")) #=> "/tmp"
```

*File#path*
path → filename
to_path → filename
Returns the pathname used to create file as a string. Does not normalize the name.

The pathname may not point to the file corresponding to file. For instance, the pathname becomes void when the file has been moved or deleted.

This method raises IOError for a file created using File::Constants::TMPFILE because they don't have a pathname.

```ruby
File.new("testfile").path               #=> "testfile"
File.new("/tmp/../tmp/xxx", "w").path   #=> "/tmp/../tmp/xxx"
```
*book notes*
Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method.

### Optional Arguments Redux
Assume you have the following code:
```ruby
require 'date'

puts Date.new
puts Date.new(2016)
puts Date.new(2016, 5)
puts Date.new(2016, 5, 13)
```
What will each of the 4 puts statements print?
-4712-01-01
-2016-01-01
-2016-05-01
-2016-05-13

*Discussion*
The documentation for the Date class can be found in the Standard library API documentation; make sure you look for it in the right place.

The documentation for Date::new (note that it is a class method) shows that its signature is:

new([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date
This signature uses [] to show that all of the arguments are optional. This is only a documentation convention; the brackets should not be included in your program.

[Julian Day](https://en.wikipedia.org/wiki/Julian_day)

### Default Arguments in the Middle
Consider the following method and a call to that method:
```ruby
def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
end

my_method(4, 5, 6)

[4, 5, 3, 6]
```
[Calling Methods - Default Positional Arguments](https://ruby-doc.org/core-2.7.1/doc/syntax/calling_methods_rdoc.html#label-Default+Positional+Arguments)

### Mandatory Blocks
The Array#bsearch method is used to search ordered Arrays more quickly than #find and #select can. Assume you have the following code:

<a = [1, 4, 8, 11, 15, 19]>

How would you search this Array to find the first element whose value exceeds 8?
```ruby
a = [1, 4, 8, 11, 15, 19]
puts a.bsearch { |x| x > 8 }
```

[Binary search algorithm](https://en.wikipedia.org/wiki/Binary_search_algorithm)

### Multiple Signatures
What do each of these puts statements output?
```ruby
a = %w(a b c d e)
puts a.fetch(7) # returns error, nothing ay index 7
puts a.fetch(7, 'beats me') # returns 'beats me' as default value when nothing @ 7
puts a.fetch(7) { |index| index**2 } # block executed as 7 OOB, so returns 49
```

### Keyword Arguments
What does this code print?
```ruby
5.step(to: 10, by: 3) { |value| puts value }
```
5
8

### Parent Class
Use irb to run the following code:
```ruby
s = 'abc'
puts s.public_methods.inspect
```
You should find that it prints a list of all of the public methods available to the String s; this includes not only those methods defined in the String class, but also methods that are inherited from Object (which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.

How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

```ruby
puts s.public_methods(false).inspect
```

### Included Modules
Ruby version 2.4.0 introduced an Array#min method not available in prior versions of Ruby; we wrote this exercise before that release. To follow along, please use the documentation for Ruby 2.3.0 here.

Use irb to run the following code:
```ruby
a = [5, 9, 3, 11]
puts a.min
```
Find the documentation for the #min method and change the above code to print the two smallest values in the Array.
```ruby
puts a.min(2)
```

### Down the Rabbit Hole
Sometimes, the documentation is going to leave you scratching your head.

In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:
```ruby
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
```
Find the documentation for YAML::load_file.

[YAML::load_file](https://ruby-doc.org/stdlib-2.7.1/libdoc/psych/rdoc/Psych.html#method-c-load_file)


