# exercise4.rb - 1000 Lights

# You have a bank of switches before you, numbered from 1 to n. Each switch is
# connected to exactly one light that is initially off. You walk down the row
# of switches and toggle every one of them. You go back to the beginning, and
# on this second pass, you toggle switches 2, 4, 6, and so on. On the third
# pass, you go back again to the beginning and toggle switches 3, 6, 9, and so
# on. You repeat this process and keep going until you have been through
# n repetitions.

# Write a method that takes one argument, the total number of switches, and
# returns an Array that identifies which lights are on after n repetitions.

# Example with n = 5 lights:
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

# The result is that 2 lights are left on, lights 1 and 4.
# The return value is [1, 4].

# With 10 lights, 3 lights are left on: lights 1, 4, and 9.
# The return value is [1, 4, 9].

def toggle(num)
  num == 0 ? 1 : 0
end

def one_thousand_lights(n)
  switches = Hash.new
  1.upto(n).each do |num|
    switches[num] = 0
  end

  counter = 1

  while counter <= n
    switches.each do |k, v|
      switches[k] = toggle(v) if k % counter == 0
    end
    counter += 1
  end
  switches.select { |k, v| k if v == 1 }.keys
end

p one_thousand_lights(5)
p one_thousand_lights(10)
p one_thousand_lights(1000)

# => [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289,
# 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]

=begin

problem:
  - given a positive integer (switches), which are all initially off (0),
    perform the same number of iterations as switches, toggling every nth
    switch

input: integer
output: array
data structure: integer, hash, array

algorithm:
- toggle method
  - take given number (which will be 0 or 1)
  - if 0 then 1 else 0
- main method
  - initialize an hash of 0s that is n elements in size
    - iterate from 1 to n building key-val pairs set light number => 0
  - initialize (counter) to 1
  - iterate from (counter) to given number (n)
    - iterate through switches
      - if switch % counter is 0 then toggle switch
    - add one to counter
  - return array of (switches) that are on (1)

=end
