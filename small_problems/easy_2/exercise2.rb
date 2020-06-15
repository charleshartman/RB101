# exercise2.rb - How big is the room?

# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

SQMETERS_TO_SQFEET = 10.7639

puts 'Please enter the length of the room in meters:'
length = gets.chomp.to_f
puts 'Please enter the width of the room in meters:'
width = gets.chomp.to_f

area_sq_meter = length * width
area_sq_ft = area_sq_meter * SQMETERS_TO_SQFEET

puts "The area of the room is #{area_sq_meter.round(2)} square meters " \
 "(#{area_sq_ft.round(2)} square feet)."
