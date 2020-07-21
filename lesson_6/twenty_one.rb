# twenty_one.rb - intial lesson implementation of '21' aka Blackjack

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
SYMBOLS = { "S" => "\u2660", "H" => "\u2665", "D" => "\u2666",
            "C" => "\u2663" }

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

# assignment high level implementation (book)
# 1. Initialize deck
# 2. Deal cards to player and dealer
# 3. Player turn: hit or stay
#   - repeat until bust or "stay"
# 4. If player bust, dealer wins.
# 5. Dealer turn: hit or stay
#   - repeat until total >= 17
# 6. If dealer bust, player wins.
# 7. Compare cards and declare winner.

# my list of parts so far
# -----------------------
# def prompt
# def clear
# constant for suits (spelled out or unicode)
# welcome/intro text
# def deck_builder
# def draw_card
# def value_aces
# def total_cards
# def display_cards
# def who_wins?
# def display_winner
