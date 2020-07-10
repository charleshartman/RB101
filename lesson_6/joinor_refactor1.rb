# joinor_refactor1.rb
# Write a method called joinor that will produce the following result:

def joinor(arr, div1 = ', ', div2 = 'or')
  case arr.length
  when 0 then ''
  when 1 then arr[0].to_s
  when 2 then "#{arr[0]} #{div2} #{arr[1]}"
  else
    arr[-1] = "#{div2} #{arr[-1]}"
    arr.join(div1)
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"
p joinor([1])
p joinor([])
