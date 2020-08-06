# exercise7.rb - Neutralizer

# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?
require 'pry'

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) }
  words.join(' ')
end

def negative?(word)
  ['dull',
   'boring',
   'annoying',
   'chaotic'].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
