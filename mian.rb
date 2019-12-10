require "./game"

game = Game.new("Mario","Green Mario")

while game.h1 > 0 && game.h2 > 0
  puts "----- NEW TURN -----"
  puts game.question
  game.answer = gets.chomp.to_i
  puts game.checkResult
  puts game.score
end

puts game.winner
puts "----- GAME OVER -----"
puts "Peace!!"