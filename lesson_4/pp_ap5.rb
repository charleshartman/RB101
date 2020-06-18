# pp_ap5.rb - Practice Problem 5

# In the array:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
flintstones.each do |name|
  if name.start_with?("Be")
    p flintstones.index(name)
  end
end

# or one line
flintstones.each { |name| p flintstones.index(name) if name.start_with?("Be") }

# book solution (unsurprisingly) even better
flintstones.index { |name| name[0, 2] == "Be" }
