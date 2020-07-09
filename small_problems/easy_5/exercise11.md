# exercise11.rb - Spin Me Around In Circles

You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

```ruby
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"
```

this returns a different object. the minute the str is split it becomes a different object.

as per book, if you passed it an array then the return would be the same object since .reverse! mutates in place.

```ruby
def spin_me(arr)
  arr.each do |word|
    word.reverse!
  end
end

arr = ['hello', 'world']
puts arr.object_id # 47264354160220
puts spin_me(arr).object_id # 47264354160220
```
