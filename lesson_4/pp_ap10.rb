# pp_ap10.rb - Practice Problem 10

# Given the munsters hash below

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}

# Modify the hash such that each member of the Munster family has an additional
# "age_group" key that has one of three values describing the age group the
# family member is in (kid, adult, or senior).

# Note: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and
# a senior is aged 65+.

=begin

munsters.each do |key, _value|
  if munsters[key]["age"] <= 17
    munsters[key]["age_group"] = 'kid'
  elsif munsters[key]["age"] > 17 && munsters[key]["age"] < 65
    munsters[key]["age_group"] = 'adult'
  else
    munsters[key]["age_group"] = 'senior'
  end
end

=end

munsters.each do |name, details|
  case details["age"]
  when 0..17
    details["age_group"] = "kid"
  when 18..64
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end

puts munsters
