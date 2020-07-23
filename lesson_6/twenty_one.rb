# twenty_one.rb - intial lesson implementation of '21' aka Blackjack

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10',
         'Jack', 'Queen', 'King']
VALUES = { 'Ace' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9, '10' => 10, "Jack" => 10,
           'Queen' => 10, 'King' => 10 }
SYMBOLS = { "S" => "\u2660", "H" => "\u2665", "D" => "\u2666",
            "C" => "\u2663", "smile" => "\u{1F600}", "pcard" => "\u{1F0CF}" }

def clear_screen
  system 'clear'
  system 'cls'
end

def prompt(msg)
  print "=> #{msg} "
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

# def total_hand(hand)
#   values = hand.map { |card| card[1] }
#
#   total = 0
#   values.each do |value|
#     if value == "Ace"
#       total += 11
#     elsif value.to_i == 0
#       total += 10
#     else
#       total += value.to_i
#     end
#   end
#
#   # Adjust for Aces
#   values.select { |value| value == "Ace" }.count.times do
#     total -= 10 if total > 21
#   end
#   total
# end

def total_hand(hand)
  values = hand.map { |card| card[1] }
  total = 0
  hand.each { |val| total += VALUES[val[1]] }
  values.select { |val| val == 'Ace' }.count.times do
    total -= 10 if total > 21
  end
  total
end

def busted?(hand)
  total_hand(hand) > 21
end

def who_wins?(dealer_hand, player_hand)
  if total_hand(dealer_hand) > total_hand(player_hand)
    puts "Dealer has #{total_hand(dealer_hand)}, you have " \
         "#{total_hand(player_hand)}."
    prompt_green("Dealer wins!")
  else
    puts "You have #{total_hand(player_hand)}, dealer has " \
         "#{total_hand(dealer_hand)}."
    prompt_green("You win!")
  end
end

def display_initial_hands(dealer_hand, player_hand)
  puts "Dealer has [#{dealer_hand[0][1]} of #{SYMBOLS[dealer_hand[0][0]]}] " \
       "and [hidden].\n\n"
  puts "Player has [#{player_hand[0][1]} of #{SYMBOLS[player_hand[0][0]]}] " \
       "and [#{player_hand[1][1]} of #{SYMBOLS[player_hand[1][0]]}].\n\n"
end

loop do
  loop do
    player_hand = []
    dealer_hand = []
    winner = ''
    
    display_header

    deck = deck_builder(SUITS, CARDS)
    initial_deal(deck, player_hand, dealer_hand)
    display_initial_hands(dealer_hand, player_hand)

    answer = nil
    loop do
      prompt("Would you like to hit or stay?")
      answer = gets.chomp
      break if answer == 'stay'
      deal_card(deck, player_hand)
      puts "Player is dealt [#{player_hand[-1][1]} of " \
           "#{SYMBOLS[player_hand[-1][0]]}]"
      puts "The total of your hand is #{total_hand(player_hand)}.\n\n"
      break if busted?(player_hand)
    end

    if busted?(player_hand)
      prompt_green("You busted! Dealer Wins!\n\n")
      break
    else
      prompt_green("You stay with #{total_hand(player_hand)}.\n\n")
    end

    prompt_green("Dealer reveals hole card...the dealer's hand is:")
    sleep 1.00
    puts "[#{dealer_hand[0][1]} of #{SYMBOLS[dealer_hand[0][0]]}] " \
         "and [#{dealer_hand[1][1]} of #{SYMBOLS[dealer_hand[1][0]]}].\n\n"
    puts "The total of the dealer's hand is #{total_hand(dealer_hand)}.\n\n"

    while total_hand(dealer_hand) < 17
      puts "Dealer hits..."
      sleep 1.00
      deal_card(deck, dealer_hand)
      puts "Dealer is dealt [#{dealer_hand[-1][1]} of " \
           "#{SYMBOLS[dealer_hand[-1][0]]}]"
      puts "The total of the dealer's hand is #{total_hand(dealer_hand)}.\n\n"

      if busted?(dealer_hand)
        prompt_green("Dealer busted! You win!\n\n")
        break
      else
        prompt_green("Dealer stays with #{total_hand(dealer_hand)}.\n\n")
      end
    end
    who_wins?(dealer_hand, player_hand)

    break # remove and continue writing with player turn
  end

  prompt("Would you like to play another hand? (y/n)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

puts ''
prompt_green('Thank you for playing Twenty-One! Goodbye.')

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
# constant for values x
# def total_hand x
# def display_initial_hands x
# def display_cards x
# def who_wins?
# def display_winner
