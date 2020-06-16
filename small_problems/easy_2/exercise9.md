# exercise9.md - String Assignment

Take a look at the following code:
```ruby
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
```
What does this code print out? Think about it for a moment before continuing.

If you said that code printed
```
Alice
Bob
```
you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:
```ruby
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
```
What does this print out? Can you explain these results?

BOB
BOB

name points to an object that is 'Bob'
save_name is assigned to name, meaning now they both point to the same object 'Bob'
name.upcase! is a destructive method that mutates the 'Bob' object to 'BOB'
since both variables are currently pointing to that object, the result of both puts is:
BOB

