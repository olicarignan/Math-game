require_relative 'player'

class Game

  def initialize
    @players = [Player.new('P1'), Player.new('P2')]
    @round = 1
  end

  def game_status
    puts "___________________"
    puts " #{@players.first.name} : #{@players.first.lives}     #{@players.last.name} : #{@players.last().lives}    "
  end

  def alive_players
    @players.select{|player| player.lives > 0}
  end

  def game_over?
    alive_players.count == 1
  end

  def next_round 
    @round+=1
    @players.rotate!
  end

  def run 

    while(!game_over?)

      current_player = alive_players.first
      enemy_player = alive_players.last

      puts "___________________"
      puts "      round #{@round} "
      puts "___________________"

      current_player.question
      game_status
      next_round

    end
    puts "___________________"
    puts "     GAME OVER     "
    puts "       #{alive_players.first.name} won."
  end

end