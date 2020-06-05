# method_testing.rb

def prompt(message)
  puts "=> #{message}"
end

scoreboard = {
  player: 0,
  computer: 0
}

def keep_score(new, totals)
  if new == 'player'
    totals[:player] += 1
  elsif new == 'computer'
    totals[:computer] += 1
  end
end

keep_score('player', scoreboard)
keep_score('player', scoreboard)
keep_score('computer', scoreboard)
keep_score('computer', scoreboard)
keep_score('computer', scoreboard)
keep_score('player', scoreboard)
keep_score('player', scoreboard)
keep_score('player', scoreboard)

p scoreboard

if scoreboard[:player] == 5
  prompt("You have won five rounds! You win the match!")
  # break
elsif scoreboard[:computer] == 5
  prompt("Computer has won five rounds! Computer wins the match!")
  # break
end
