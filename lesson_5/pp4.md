# pp4.md - Practice Problem 4

For each of these collection objects where the value 3 occurs, demonstrate how you would change this to 4.
```ruby

arr1 = [1, [2, 3], 4]
arr1[1][1] = 4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2] = 4

hsh1 = {first: [1, 2, [3]]}
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2[['a']][:a][2] = 4

```

Book note: In the last example the key for the first item in the outer hash is actually an array containing a single string object ["a"]. Although this is unusual, it is important to remember that both hash keys and values can be any Ruby object.
