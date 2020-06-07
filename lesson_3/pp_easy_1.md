# pp_easy_1.md

*Question 1*
What would you expect the code below to print out?

```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```
I would expect it to print the numbers from the original array as the call to uniq was not destructive... numbers.uniq! would permanently alter the array

*book answer*
It prints out

1
2
2
3

numbers.uniq returned a new Array object with unique elements, but it did not modify the numbers object. Further, the puts method automatically calls to_s on its argument, and that’s why you see the output like above.

Additional note: had the last line been p numbers instead, the output would have been [1, 2, 2, 3] because the p method automatically calls inspect on its argument, which gives a different formatting on the output. Furthermore, we could have also done puts numbers.inspect and the output would have been the same as using the p method.

*Question 2*
Describe the difference between ! and ? in Ruby. And explain what would happen in the following scenarios:

what is != and where should you use it?
"does not equal" ... can be used to create a condition that executes while or if something is false

put ! before something, like !user_name
"not" as is !true would be false !false is true... 

put ! after something, like words.uniq!
makes the call destructive... mutates the caller 

put ? before something 
use before conditional expression like if condition is true ? the value x : otherwise value y

put ? after something
returns true/false on mathod call like include? or has_value?

put !! before something, like !!user_name
not not = true

*book solution*
Just to clarify, if you see ! or ? at the end of the method, it's actually part of the method name, and not Ruby syntax. Therefore, you really don't know what the method is doing, even if it ends in those characters -- it depends on the method implementation. The other uses are actual Ruby syntax:

!= means "not equals"
? : is the ternary operator for if...else
!!<some object> is used to turn any object into their boolean equivalent. (Try it in irb)
!<some object> is used to turn any object into the opposite of their boolean equivalent, just like the above, but opposite.

*Question 3*
Replace the word "important" with "urgent" in this string:

```ruby
advice = "Few things in life are as important as house training your pet dinosaur."

# answer
advice.gsub!('important', 'urgent')

```
*Question 4*
The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

<numbers = [1, 2, 3, 4, 5]>
What do the following method calls do (assume we reset numbers to the original array between method calls)?

<numbers.delete_at(1)>
<numbers.delete(1)>

<numbers.delete_at(1)> - deletes the data at the 1 index position, in this case '2'

<numbers.delete(1)> - deletes the data matching the object, in this case '1'

*book note*
Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" method names.

*Question 5*
Programmatically determine if 42 lies between 10 and 100.
/hint: Use Ruby's range object in your solution./

```ruby
case 42
when 10..100 then puts "in range"
else puts "not in range"
end

# or one line!
(10..100).cover?(42)

```
*Question 6*
Starting with the string:

<famous_words = "seven years ago...">
show two different ways to put the expected "Four score and " in front of it.

```ruby
famous_words = "seven years ago..."
expected = "Four score and"

puts "Four score and " + famous_words
puts "#{expected} #{famous_words}"

# book solution
"Four score and " + famous_words # or

famous_words.prepend("Four score and ") # or

"Four score and " << famous_words

```
*Question 7*
If we build an array like this:
```ruby
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```
We will end up with this "nested" array:
```ruby
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```
Make this into an un-nested array.

```ruby
flintstones.flatten!
```

*Question 8*
Given the hash below

```ruby
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
```
Turn this into an array containing only two elements: Barney's name and Barney's number

```ruby
flintstones = flintstones.to_a[2]

# book answer (better)
flintstones.assoc("Barney")

```
*assoc(key) → new_array or nil*
If the given key is found, returns a 2-element Array containing that key and its value.
