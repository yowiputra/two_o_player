require './player'

class Game

  def determine_current_player(bool)
    current_player = {}
    if bool
      current_player = @player1
    else
      current_player = @player2
    end
    current_player
  end

  def

  def execute
    flag = true
    current_player = determine_current_player(flag)
    while current_player.lives > 0
      
    end
  end

  def initialize
    puts 'Welcome to TwO-O-Player!'

    puts 'Player 1, please enter your name!'
    @player1 = Player.new(gets.chomp)

    puts 'Player 2, please enter your name!'
    @player2 = Player.new(gets.chomp)

    puts 'Let\'s start the game!'
    puts '----------------------'
    execute
  end

end

newgame = Game.new
