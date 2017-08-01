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

  def generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    puts "#{@current_player.name}: What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  def check_answer(player_answer, real_answer)
    player_answer.to_i === real_answer
  end

  def execute
    flag = true
    @current_player = determine_current_player(flag)
    while @current_player.lives > 0
      generate_question
      player_answer = gets.chomp
      if check_answer(player_answer, @answer) === true
        puts "#{@current_player.name}: YES! You are correct!"
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      else
        @current_player.decrease_life
        puts "#{@current_player.name}: Seriously? No!"
        puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
      end
      if @current_player.lives === 0
        winner = determine_current_player(!flag)
        puts "#{winner.name} wins with a score of #{winner.lives}/3"
        puts '----------------- GAME OVER -------------------'
        puts 'Good bye!'
      else
        flag = !flag
        @current_player = determine_current_player(flag)
        puts '---------------- NEW TURN -------------------'
      end
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
