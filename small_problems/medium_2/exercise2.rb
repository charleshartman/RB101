# exercise2.rb - Now I Know My ABCs

# A collection of spelling blocks has two letters per block, as shown
# in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words
# that do not use both letters from any given block. Each block can only
# be used once.

# Write a method that returns true if the word passed in as an argument can be
# spelled from this set of blocks, false otherwise.

SPELLING_BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

def block_word?(str)
  chars = str.upcase.chars
  result = nil
  game_blocks = SPELLING_BLOCKS.map(&:dup)
  chars.each do |char|
    game_blocks.each do |sub|
      if sub.include?(char)
        game_blocks.delete(sub)
        result = true
        break
      else
        result = false
      end
    end
  end
  result
end

# Examples:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

=begin
input: string
output: return true or false
data structure:
  - blocks as nested array or hash dictionary, input string converted to
    array of characters
rules:
  - use each 'block' only once
  - input may be lower or upper case
algorithm:
  - initialize spelling_blocks nested array
  - initialize new array (chars) of chars based on input string (uppercased)
  - initialize variable as boolean flag for result
  - iterate through chars,
      - if letter is present in spelling_blocks set flag to true,
        remove block, continue
      - else set flag false and break
  - return result
=end
