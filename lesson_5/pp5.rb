# pp5.rb - Practice Problem 5

# Given this nested Hash:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# figure out the total age of just the male members of the family.

total_male_age = 0
munsters.each_value do |values|
  total_male_age += values["age"] if values["gender"] == "male"
end

puts "The total age of the male munsters is #{total_male_age}."

# Book notes: In this example, within each key-value pair in the outer hash
# the value is itself a hash. When iterating through the outer hash, we need
# to access two values from each inner hash.

# Since we're not referencing the key (each family member's name) from the
# key-value pairs in the outer hash, we can use Hash#each_value with a single
# block parameter.
