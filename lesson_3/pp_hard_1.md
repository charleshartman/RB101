# pp_hard_1.md

*Question 1*
What do you expect to happen when the greeting variable is referenced in the last line of the code below?
```ruby
if false
  greeting = “hello world”
end

greeting
```
*error undefined local variable since the loop is not false, greeting doesn't get assigned... so error or simply nothing*
apparently nothing as even though it isn't assigned it exists with a nil return value simply by being present in the loop

*book notes*
greeting is nil here, and no "undefined method or local variable" exception is thrown. Typically, when you reference an uninitialized variable, Ruby will raise an exception, stating that it’s undefined. However, when you initialize a local variable within an if block, even if that if block doesn’t get executed, the local variable is initialized to nil.

*Question 2*
What is the result of the last line in the code below?
```ruby
greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
```
*complete hash with 'hi there' value*
*book notes*
The output is <{:a=>"hi there"}>. The reason is because informal_greeting is a reference to the original object. The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it. This means that the original object was changed, thereby impacting the value in greetings. If instead of modifying the original object, we wanted to only modify informal_greeting but not greetings, there are a couple of options:

we could initialize informal_greeting with a reference to a new object containing the same value by <informal_greeting = greetings[:a].clone>.

we can use string concatenation, <informal_greeting = informal_greeting + ' there'>, which returns a new String object instead of modifying the original object.

*Question 3*
In other practice problems, we have looked at how the scope of variables affects the modification of one "layer" when they are passed to another.

To drive home the salient aspects of variable scope and modification of one scope by another, consider the following similar sets of code.

What will be printed by each of these code groups?

A)
```ruby
def mess_with_vars(one, two, three)
  one = two #two
  two = three #three
  three = one #two
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```
*one, two, three... even though they have the same names they are within the method local variables and do not reassign the values of the outer scope variables of the same name*

B)
```ruby
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```
*one, two, three... here we pass in with the same names again, but in this case we are reassigning with actual new string values instead of referencing existing local value, but we still are not mutating the outer scope variable*

C)
```ruby
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}"
puts "two is: #{two}"
puts "three is: #{three}"
```
*now we're talking... two, three, one... gsub! mutates the global variable, subs pattern for replacement*

*Question 4*
Ben was tasked to write a simple ruby method to determine if an input string is an IP address representing dot-separated numbers. e.g. "10.4.5.11". He is not familiar with regular expressions. Alyssa supplied Ben with a method called is_an_ip_number? that determines if a string is a numeric string between 0 and 255 as required for IP numbers and asked Ben to use it.
```ruby
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    break unless is_an_ip_number?(word)
  end
  return true
end
```
Alyssa reviewed Ben's code and says "It's a good start, but you missed a few things. You're not returning a false condition, and you're not handling the case that there are more or fewer than 4 components to the IP address (e.g. "4.5.5" or "1.2.3.4.5" should be invalid)."

Help Ben fix his code.
```ruby
ef dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  p dot_separated_words
  if dot_separated_words.size != 4
    false
  else
    while dot_separated_words.size > 0 do
      word = dot_separated_words.pop
      result = is_an_ip_number?(word)
      if result == "false"
        return false
      else 
        return true
      end
    end
  end
end
```

*omg book*
There are several ways to fix this. To determine if there are exactly 4 dot-separated "words" in the string, you can simply add a check for dot_separated_words.size after splitting the string.

The other error in Ben's code is that instead of returning false upon encountering a non-numeric component, he used break to break out of the while loop. Once he breaks, control falls through to the return true statement. He can fix this by performing return false instead of break.
```ruby
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_an_ip_number?(word)
  end

  true
end
```
Note: Ben's original return true on the last line of the method can be shortened to just true. This is because Ruby returns the result of the last evaluated expression.

