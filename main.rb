require_relative 'player'
require_relative 'turn'

puts '----- WELCOME TO twO-O-Player MATH GAME!! -----'

Player1 = Player.new('Player 1')
puts "What is player 1's name?"
Player1.name = gets.chomp

Player2 = Player.new('Player 2')
puts "What is player 2's name?"
Player2.name = gets.chomp

puts "Player 1 is #{Player1.name} :: Player 2 is #{Player2.name}"

loop do

  turn(Player1)
  if Player1.gameover
    break puts "#{Player2.name} wins with a score of #{Player2.life}/3"
  end

  turn(Player2)
  if Player2.gameover
    break puts "#{Player1.name} wins with a score of #{Player1.life}/3"
  end 

  puts "----- SCORE -----"
  puts "#{Player1.name}: #{Player1.life}/3 vs #{Player2.name}: #{Player2.life}/3"

  puts "Continue playing?? [y/n]"
  continue = gets.chomp
  if continue == "n"
    exit(0)
  end

  puts "----- NEW TURN -----"
  
end  

puts "----- GAME OVER -----"