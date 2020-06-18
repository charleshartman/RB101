# pp_ap8.md - Practice Problem 8

What happens when we modify an array while we are iterating over it? What would be output by this code?
```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
```
Answer: prints n, shift removes n element and returns n in a new array
output: 
1
3 
---

What would be output by this code?
```ruby
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
```
Answer: prints n, pop removes the last element, n and returns n in a new array
output:
1
2
 