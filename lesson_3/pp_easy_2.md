# pp_easy_2.md

*Question 1*
In this hash of people and their age,
```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```
see if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution?
```ruby
ages.include?("Spot")
ages.has_key?("Spot")
ages.key?("Spot")
ages.member?("Spot")
```

*Question 2*
Starting with this string:
```ruby
munsters_description = "The Munsters are creepy in a good way."
```
Convert the string in the following ways (code will be executed on original munsters_description above):

"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

```ruby
munsters_description.swapcase
munsters_description.capitalize
munsters_description.downcase
munsters_description.upcase
```

*Question 3*
We have most of the Munster family in our age hash:
```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash
additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)
```

*Question 4*
See if the name "Dino" appears in the string below:
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")
advice.match?("Dino") # book solution
```

*Question 5*
Show an easier way to write this array:
```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```

*Question 6*
How can we add the family pet "Dino" to our usual array:
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.append("Dino")
flintstones << "Dino" # book solution
```

*Question 7*
In the previous practice problem we added Dino to our array like this:
```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
# We could have used either Array#concat or Array#push to add Dino to the family.
# How can we add multiple items to our array? (Dino and Hoppy)
flintstones.append("Dino", "Hoppy")
# book solutions
flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# or
flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
```

*Question 8*
Shorten this sentence:
```ruby
advice = "Few things in life are as important as house training your pet dinosaur."
```
...remove everything starting from "house".

Review the String#slice! documentation, and use that method to make the return value "Few things in life are as important as ". But leave the advice variable as "house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?


