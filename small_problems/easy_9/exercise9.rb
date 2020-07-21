# exercise9.rb - Grade book

# Write a method that determines the mean (average) of the three scores
# passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter	Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'

# Tested values are all between 0 and 100. There is no need to check for
# negative values or values greater than 100.

# first solution
# def get_grade(g1, g2, g3)
#   average = (g1 + g2 + g3) / 3
#   if (90..100).cover?(average) then 'A'
#   elsif (80..89).cover?(average) then 'B'
#   elsif (70..79).cover?(average) then 'C'
#   elsif (60..69).cover?(average) then 'D'
#   else 'F'
#   end
# end

# second solution
def get_grade(g1, g2, g3)
  average = (g1 + g2 + g3) / 3
  case average
  when 90..100 then 'A'
  when 80..89 then  'B'
  when 70..79 then  'C'
  when 60..69 then  'D'
  else              'F'
  end
end

# Example:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(40, 50, 60) == 'F'
p get_grade(82, 88, 85) == 'B'
