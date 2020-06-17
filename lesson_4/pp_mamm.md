# pp_mamm.md - Practice Problems: Methods and More Methods

*Practice Problem 1*
What is the return value of the select method below? Why?
```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```
=> [1, 2, 3]

the block will iterate through the provided array, the result of each num > 5 will be false, but the last thing called in the block each time is simply the string 'hi', which is a truthy value, so the array will return the original three elements.

*Practice Problem 2*
How does count treat the block's return value? How can we find out?
```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```
we are call count on an array, and length on each string in the array, the ruby docs say re: Array#count "If a block is given, counts the number of elements for which the block returns a true value." ... it looks like this array will return two trues and one false... so the it should return => 2

*Practice Problem 3*
What is the return value of reject in the following code? Why?
```ruby
[1, 2, 3].reject do |num|
  puts num
end
```
ruby docs: "Returns a new array containing the items in self for which the given block is not true. The ordering of non-rejected elements is maintained."
puts returns nil, which is a falsey value, so three falses mean three rejects, so it returns the original => [1, 2, 3]

*Practice Problem 4*
What is the return value of each_with_object in the following code? Why?
```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```
the hash here is newly created by the .each_with_object method, and it is empty... the block then makes the 0 index position of the string the key for each corresponding value... for example, {"c"=>"cat"}... so the return value of each iteration is a new key value pair.

*Practice Problem 5*
What does shift do in the following code? How can we find out?
```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```
per the docs, it will remove the first key value pair and return it as an array => [:a, 'ant'], the original hash has been mutated and now only contains the b: 'bear' pair.

*Practice Problem 6*
What is the return value of the following statement? Why?
```ruby
['ant', 'bear', 'caterpillar'].pop.size
```
=> 11 
.pop destructively mutates the given array, taking 'caterpiller' (pop removes the returns the last element of an array) then .size counts the characters in the returned string

*Practice Problem 7*
What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?
```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```
any? is true if any iteration of the block returns a true value. 1 and 3 are odd and this is the last line in the block, so the return of any? should be true. the last call of num.odd? in the block suggests that the return value of the block is => true ... it seems that this method stops iterating as soon as it finds a => true, like an or (||) block if the left arg is true it doesn't bother assessing the right. Very cool!

*Practice Problem 8*
How does take work? Is it destructive? How can we find out?
```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```
.take returns the first n elements of an array... in this case => [1, 2] ... it is not destructive, calling arr after take returns the original array.

*Practice Problem 9*
What is the return value of map in the following code? Why?
```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```
returns and array, returns nil for first hash value as it is not true, returns the second value 'bear' as it's size is greater than 3.

"When none of the conditions in an if statement evaluates as true, the if statement itself returns nil. That's why we see nil as the first element in the returned array."

*Practice Problem 10*
What is the return value of the following code? Why?
```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```
=> [1, nil, nil] 
map returns array, 1 isn't greater than 1 so else returns 1, other two elements are greater so puts num which returns nil.

