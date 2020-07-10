# joinor.rb
# Write a method called joinor that will produce the following result:

def joinor(arr, div1 = ', ', div2 = 'or')
  if arr.length == 0
    str = ''
  elsif arr.length == 1
    str = arr[0].to_s
  elsif arr.length > 2
    arr[-1] = "#{div2} #{arr[-1]}"
    str = arr.join(div1)
  else
    str = "#{arr[0]} #{div2} #{arr[1]}"
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
p joinor([1])
p joinor([])
