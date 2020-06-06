=begin

The approach that we recommend takes the logic out of the method and puts it
into a collection. Instead of testing a long series of conditions, you can look
up the player's move as a key in a hash. The value of that hash element would
be a list of moves that the player's move beats. For instance, if you look up
"rock," you should be able to determine that "rock" defeats either "scissors"
or "lizard." This technique is an everyday coding "pattern" that will serve
you well. Moving repetitive logic into hashes and arrays comes up in all
kinds of programs, so it's worth trying to learn the technique now.

# RULES
Scissors cuts paper
Paper covers rock
Rock crushes lizard
Lizard poisons Spock
Spock smashes scissors
Scissors decapitates lizard
Lizards eats paper
Paper disproves Spock
Spock vaporizes rock
Rock crushes scissors
rescue => exception
=end

rpssl_logic = {
  r: ['s', 'l'],
  p: ['r', 'S'],
  s: ['p', 'l'],
  S: ['s', 'r'],
  l: ['S', 'p']
}

p rpssl_logic
puts rpssl_logic[:S]

# if player choice == computer choice then 'You tied!'
# elseif player chooses (key) and computer choice is included in key's list 
# of  values then player wins
# else computer wins
=begin
def win?(first, second, logic_hash)
  first == 'r' && logic_hash[:r].include?(second) ||
    first == 'p' && logic_hash[:p].include?(second) ||
    first == 's' && logic_hash[:s].include?(second) ||
    first == 'S' && logic_hash[:S].include?(second) ||
    first == 'l' && logic_hash[:l].include?(second)
end
=end

def win?(first, second, logic_hash)
  logic_hash[first.to_sym].include?(second)
end

puts win?('r', 'S', rpssl_logic)
puts win?('p', 'S', rpssl_logic)
puts win?('s', 'S', rpssl_logic)
puts win?('S', 'S', rpssl_logic)
puts win?('l', 'S', rpssl_logic)
