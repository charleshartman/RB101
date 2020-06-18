# pp_ap6.rb - Practice Problem 6

# Amend this array so that the names are all shortened to just the
# first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# iterate through array, mutating strings with slice

flintstones.each { |name| name.slice!(3..-1) }

p flintstones

# could also use map!

flintstones.map! do |name|
  name[0, 3]
end
