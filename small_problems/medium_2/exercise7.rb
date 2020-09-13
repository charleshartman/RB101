# exercise7.rb - Unlucky Days

# Write a method that returns the number of Friday the 13ths in the year given
# by an argument. You may assume that the year is greater than 1752 (when the
# United Kingdom adopted the modern Gregorian Calendar) and that it will remain
# in use for the foreseeable future.

# Date.new(2001,2,3)

# friday? -> bool
# Returns true if the date is Friday.

require 'date'

def friday_13th(year)
  result = 0
  month = 1
  12.times do
    result += 1 if Date.new(year, month, 13).friday?
    month += 1
  end
  result
end

# Examples:
p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2
p friday_13th(2020)
p friday_13th(2021)

=begin

problem:
  - return the number of friday the 13ths that occur in the given year

input: integer (year)
output: integer
data structure: integer

algorithm:
  - initialize variable (result) to 0
  - check the 13th of each month to see if it is a friday (12.times)
  - initialize new date object at January 13 of given year
  - test each month by iterating month
    - if friday? is true add 1 to (result)
  - return (result)

=end
