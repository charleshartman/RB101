# pp_ap3.rb - Practice Problem 3

# In the age hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# remove people with age 100 and greater.

ages.delete_if { |_key, value| value >= 100 }
# this works too
# ages.keep_if { |_key, value| value < 100 }
p ages

# select!/filter! also an option
