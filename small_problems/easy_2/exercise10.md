# exercise10.md - Mutation

What will the following code print, and why? Don't run the code until you have tried to answer.
```ruby
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
```

array1 is initialized with eight elements, array2 is initialized empty.
array1.each iterates through array1 and pushes each current value to array2.
array1.each iterates through array1 and mutates values starting with C or S to upper case, so array1 now = ["Moe", "Larry", "CURLY", "SHEMP", "Harpo", "CHICO", "Groucho", "Zeppo"], since array2 is pointing at the same values and the upcase call was destructive, the values in both arrays have been altered.
