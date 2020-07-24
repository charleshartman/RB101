# twenty_one_bonus.rb - Twenty-One Bonus Features Assignment
# Whatever-One also implemented

require 'pry'

SUITS = ['H', 'D', 'S', 'C']
CARDS = ['Ace', '2', '3', '4', '5', '6', '7', '8', '9', '10',
         'Jack', 'Queen', 'King']
VALUES = { 'Ace' => 11, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9, '10' => 10, "Jack" => 10,
           'Queen' => 10, 'King' => 10 }
SYMBOLS = { "S" => "\u2660", "H" => "\u2665", "D" => "\u2666",
            "C" => "\u2663", "smile" => "\u{1F600}", "pcard" => "\u{1F0CF}" }

# set these to modify gameplay parameters, 21 and 17 are traditional
HIGH_SCORE = 21
DEALER_HITS_TO = 17

def clear_screen
  system 'clear'
  system 'cls'
end

def prompt(msg)
  puts "\e[34m#{msg}\e[0m"
end

def prompt_green(msg)
  puts "\e[32m#{msg}\e[0m"
end

def display_header
  clear_screen
  puts ''
  prompt_green("Welcome to '#{HIGH_SCORE}' inspired by 'Blackjack'")
  prompt_green("Single Deck Shoe. Dealer must HIT below #{DEALER_HITS_TO}.")
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
  2.times do
    deal_card(deck, player_hand)
    deal_card(deck, dealer_hand)
  end
end

def deal_card(deck, hand)
  hand << deck.shift
end

def total_hand(hand)
  values = hand.map { |card| card[1] }
  total = 0
  hand.each { |val| total += VALUES[val[1]] }
  values.select { |val| val == 'Ace' }.count.times do
    total -= 10 if total > HIGH_SCORE
  end
  total
end

def current_score(dealer_total, player_total)
  puts "Dealer total is #{dealer_total}, player total is #{player_total}.\n\n"
end

def busted?(total)
  total > HIGH_SCORE
end

def play_again?
  prompt("Would you like to play another hand? (y/n) ")
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def who_wins?(dealer_total, player_total)
  if player_total > HIGH_SCORE
    :player_bust
  elsif dealer_total > HIGH_SCORE
    :dealer_bust
  elsif dealer_total == player_total
    :push
  elsif dealer_total > player_total
    :dealer
  elsif player_total > dealer_total
    :player
  end
end

def report_result(dealer_total, player_total)
  result = who_wins?(dealer_total, player_total)

  case result
  when :player_bust
    prompt_green("Player busted! Dealer wins!\n\n")
  when :dealer_bust
    prompt_green("Dealer busted! Player wins!\n\n")
  when :player
    prompt_green("Player wins!\n\n")
  when :dealer
    prompt_green("Dealer wins!\n\n")
  when :push
    prompt_green("Hand is tied, push!\n\n")
  end
end

def display_initial_hands(dealer_hand, player_hand)
  puts "Dealer has [#{dealer_hand[0][1]} of #{SYMBOLS[dealer_hand[0][0]]}] " \
       "and [hidden].\n\n"
  puts "Player has [#{player_hand[0][1]} of #{SYMBOLS[player_hand[0][0]]}] " \
       "and [#{player_hand[1][1]} of #{SYMBOLS[player_hand[1][0]]}].\n\n"
end

loop do
  player_hand = []
  dealer_hand = []
  display_header

  deck = deck_builder(SUITS, CARDS)
  initial_deal(deck, player_hand, dealer_hand)
  display_initial_hands(dealer_hand, player_hand)

  dealer_total = total_hand(dealer_hand)
  player_total = total_hand(player_hand)

  loop do
    answer = nil
    loop do
      prompt("Would you like to (h)it or (s)tay?")
      answer = gets.chomp.downcase
      break if answer == 's' || answer == 'h'
      puts "=> Invalid input, you must enter 'h' or 's'.\n\n"
    end

    if answer == 'h'
      deal_card(deck, player_hand)
      puts "Player is dealt [#{player_hand[-1][1]} of " \
           "#{SYMBOLS[player_hand[-1][0]]}]"
      player_total = total_hand(player_hand)

      puts "The total of your hand is #{player_total}.\n\n"
    end

    break if answer == 's' || busted?(player_total)
  end

  if busted?(player_total)
    current_score(dealer_total, player_total)
    report_result(dealer_total, player_total)
    play_again? ? next : break
  else
    prompt_green("Player stays with #{player_total}.\n")
  end

  prompt_green("Dealer reveals hole card...the dealer's hand is:")
  sleep 1.00
  puts "[#{dealer_hand[0][1]} of #{SYMBOLS[dealer_hand[0][0]]}] " \
       "and [#{dealer_hand[1][1]} of #{SYMBOLS[dealer_hand[1][0]]}].\n\n"
  puts "The total of the dealer's hand is #{dealer_total}.\n\n"

  loop do
    break if dealer_total >= DEALER_HITS_TO

    puts "Dealer hits..."
    sleep 1.00
    deal_card(deck, dealer_hand)
    puts "Dealer is dealt [#{dealer_hand[-1][1]} of " \
         "#{SYMBOLS[dealer_hand[-1][0]]}]"
    dealer_total = total_hand(dealer_hand)

    puts "The total of the dealer's hand is #{dealer_total}.\n\n"
    sleep 1.00
  end

  if busted?(dealer_total)
    current_score(dealer_total, player_total)
    report_result(dealer_total, player_total)
    play_again? ? next : break
  else
    prompt_green("Dealer stays with #{dealer_total}.\n")
  end

  current_score(dealer_total, player_total)
  report_result(dealer_total, player_total)
  break unless play_again?
end

puts ''
prompt_green('Thank you for playing Twenty-One! Goodbye.')
