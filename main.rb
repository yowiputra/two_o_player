require './player'
require './gamedata'
require './gamelogic'

# Game initialization
puts "Welcome to the TwO-O-Player!"
game = GameData.new

puts "Player 1 please enter your name"
player1 = Player.new(gets.chomp)

puts "Player 2 please enter your name"
player2 = Player.new(gets.chomp)

game.players << player1 << player2

game.players.each do |player|
  puts player.name
  puts player.lives
end
