# exercise2.rb - What Century is That?

# Write a method that takes a year as input and returns the century. The
# return value should be a string that begins with the century number, and
# ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

def century(year)
  century = year / 100 + 1
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# year / 100 + 1
# last_digit = century % 10

# Examples:
p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

=begin
- pseudocode
- input: integer
- output: string
- data_structure: int, str
- algorithm:
  - take input integer and do some calculation that arrives at the numeric part
      of final output
  - calculation:  year / 100 + 1
                  last_digit = century % 10
  - based on numeric value find correct string ending from ruleset
  - return string with .to_s/interpolation
=end
