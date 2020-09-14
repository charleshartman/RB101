# exercise2.rb - Seeing Stars

# Write a method that displays an 8-pointed star in an nxn grid, where n is an
# odd integer that is supplied as an argument to the method. The smallest such
# star you need to handle is a 7x7 grid.

def star(num)
  # code
end

# Examples:
star(7)
=begin
*  *  *
 * * *
  ***
*******
  ***
 * * *
*  *  *
=end
star(9)
=begin
*   *   *
 *  *  *
  * * *
   ***
*********
   ***
  * * *
 *  *  *
*   *   *
=end

=begin

<-PEDAC->
problem:
  - output a 8 pointed star that is given int wide and given int tall
  - 7x7 is smallest size
  - only odd integers will be supplied as argument

input: integer
output: string
data structure: integer, string
algorithm:
  - initialize (working) to (working)
  - initialize (upper) and (lower) to ''
  - initialize (center) to '*' * num
  - iterate from given number to (working)
    - push correct star/space assortment into string (upper)
  - iterate from (working) to given number
    - push correct star/space assortment into string (upper)
  - output upper, center, lower

=end
