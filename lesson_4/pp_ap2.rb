# pp_ap2.rb - Practice Problem 2

# Add up all of the ages from the Munster family hash:

ages = {  "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10,
          "Marilyn" => 22, "Spot" => 237 }

total_ages = 0
ages.each { |_key, value| total_ages += value }
p total_ages

# or simply
p ages.values.inject(:+)
