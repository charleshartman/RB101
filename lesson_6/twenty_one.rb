# twenty_one.rb - intial lesson implementation of '21' aka Blackjack

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10',
         'Jack', 'Queen', 'King']
VALUES = { 'Ace' => [1, 11], '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9, '10' => 10, "Jack" => 10,
           'Queen' => 10, 'King' => 10 }
SYMBOLS = { "S" => "\u2660", "H" => "\u2665", "D" => "\u2666",
            "C" => "\u2663", "smile" => "\u{1F600}", "pcard" => "\u{1F0CF}" }

player_hand = []
dealer_hand = []

def clear_screen
  system 'clear'
  system 'cls'
end

def prompt(msg)
  puts "=> #{msg}"
end

def prompt_green(msg)
  puts "\e[32m#{msg}\e[0m"
end

def display_header
  clear_screen
  puts ''
  prompt_green("Welcome to 'Twenty-One' aka 'Blackjack'")
  prompt_green("Single Deck Shoe. Dealer must HIT below 17.")
  prompt_green("Good Luck!\n")
  sleep 1.00
  prompt_green("Shuffling...")
  sleep 1.50
  prompt_green("Dealing...\n")
  sleep 1.00
end

def deck_builder(suits, cards)
  fresh_deck = []
  suits.each do |suit|
    cards.each do |card|
      fresh_deck << [suit, card]
    end
  end

  fresh_deck.shuffle
end

def initial_deal(deck, player_hand, dealer_hand)
  deal_card(deck, player_hand)
  deal_card(deck, dealer_hand)
  deal_card(deck, player_hand)
  deal_card(deck, dealer_hand)
end

def deal_card(deck, hand)
  hand << deck.shift
end

def total_hand(hand)
  total = 0
  hand.each { |val| total += VALUES[val[1]] }
  p total
end

def display_initial_hands(dealer_hand, player_hand)
  puts "Dealer has [#{dealer_hand[0][1]} of #{SYMBOLS[dealer_hand[0][0]]}] " \
       "and [hidden].\n\n"
  puts "Player has [#{player_hand[0][1]} of #{SYMBOLS[player_hand[0][0]]}] " \
       "and [#{player_hand[1][1]} of #{SYMBOLS[player_hand[1][0]]}].\n\n"
end

loop do
  display_header

  deck = deck_builder(SUITS, CARDS)
  initial_deal(deck, player_hand, dealer_hand)
  display_initial_hands(dealer_hand, player_hand)

  answer = nil
  loop do
    prompt("Would you like to hit or stay?")
    answer = gets.chomp
    break if answer == 'stay' # || busted?
    deal_card(deck, player_hand)
    puts "Player gets [#{player_hand[-1][1]} of #{SYMBOLS[player_hand[-1][0]]}]"
    p total_hand(player_hand)
  end

  break # remove and continue writing with player turn
end

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
# def prompt x
# def clear x
# constant for suits (spelled out or unicode) x
# welcome/intro text x
# def deck_builder x
# def draw_card x
# constant for values
# def value_aces
# def total_cards
# def display_initial_hands x
# def display_cards
# def who_wins?
# def display_winner
