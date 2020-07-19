# twenty_one.rb - intial lesson implementation of '21' aka Blackjack

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']

def deck_builder(suits, cards)
  fresh_deck = []
  suits.each do |suit|
    cards.each do |card|
      fresh_deck << [suit, card]
    end
  end

  fresh_deck.shuffle
end

deck = deck_builder(SUITS, CARDS)
p deck
