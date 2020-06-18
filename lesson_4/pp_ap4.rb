# pp_ap4.rb - Practice Problem 4

# Pick out the minimum age from our current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
         "Marilyn" => 22, "Spot" => 237 }

# assign variable: youngest
# iterate, if age < youngest || youngest == 0 then youngest = age
# p youngest

youngest = 0
ages.each do |_key, value|
  if value < youngest || youngest == 0
    youngest = value
  end
end

puts "The youngest Munster is age #{youngest}."

# or simply use:
ages.values.min
