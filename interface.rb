# interface.rb

# Pseudo-code:
# 1. Print welcome
# 2. Get horses
  #create an array of horses
# 3. Get user's bet
  #gets.chomp user input
# 4. Run the race
  #grab random horse from array
# 5. Print results

horse_names = ["spitfire", "horseguy", "joe", "lenny"]

puts "Welcome to horseracing! Choose your horse:"

horse_names.each_with_index do |horse, index|
  puts "#{index+1}) #{horse}"
end

winner = rand(4) # 0 -> 3

puts "What horse are you betting on?"
user_choice = gets.chomp.to_i-1

puts "you chose #{horse_names[user_choice]}"

sleep(2)
puts "#{horse_names[winner]} is taking the lead"
sleep(2)

if winner == user_choice
  puts "winner"
else
  puts "loser.. the winner was #{horse_names[winner]}"
end
