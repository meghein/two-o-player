require_relative 'question'

def turn(player)
  puts "#{player.name}: What does #{Question.num1} plus #{Question.num2} equal?"

  answer = gets.chomp.to_i

  if Question.validate(answer)
    puts "YES! You are correct!"
  else
    puts "NOPE! You are incorrect!"
    player.incorrect
  end
end