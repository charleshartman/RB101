# exercise2.rb - After Midnight (Part 1)

# The time of day can be represented as the number of minutes before or after
# midnight. If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns
# the time of day in 24 hour format (hh:mm). Your method should work with any
# integer input.

# You may not use ruby's Date and Time classes.

def time_of_day(num)
  # computations
  minutes = num % 60
  hours = num / 60
  days = hours / 24
  remain_hours = hours % 24 if days > 0
  puts "Minutes: #{minutes} | Hours: #{hours}"
  puts "Days: #{days} | Remainder Hours: #{remain_hours}"
end
# Examples:
p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
# Disregard Daylight Savings and Standard Time and other complications.

# - PEDAC
# - input: integer
# - output: string value representing time
# - data structure: integers, two variables representing hours and minutes
#   - these will be converted to string or output with string interpolation
# - algorithm:
#     - if argument is zero return "00:00"
#     - if argunent is negative int do math/logic:
#       - convert minutes to hours/minutes
#       - math in relation to midnight
#     - if argument is positive int do math/logic:
#       - convert minutes to hours/minutes
#       - math in relation to midnight

# some logic
=begin
if num == 0 || num % 1440 == 0
  "00:00"
elsif num < 1440 
  minutes = num % 60
  hours = num / 60
  time = "#{hours}:#{minutes}"
elsif num > 0 <= 1440
...
=end
