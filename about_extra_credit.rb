# EXTRA CREDIT:
#
# Create a program that will play the Greed Game.
# Rules for the game are in GREED_RULES.TXT.
#
# You already have a DiceSet class and score function you can use.
# Write a player class and a Game class to complete the project.  This
# is a free form assignment, so approach it however you desire.

class Player
  attr_reader :name, :total_score
  attr_accessor :turn_score

  def initialize(name)
    @name = name
    @total_score = 0
    @turn_score = 0
  end
  def bank_score
    @total_score += @turn_score
    @turn_score = 0
  end

end
class Game
  def initialize(player_names)
    @players = player_names.map { |name| Player.new(name) }
    @dice_set = DiceSet.new
    @winner = nil
  end
  def play
    # loop through players until someone wins
    until @winner
      @players.each de |player|
      take_turn(player)
      if player.total_score >= 3000
        @winner = player
        break
      end
    end
  end
  # Take a single turn for a player
  def take_turn(player)
    puts "#{player.name}'s turn!"
    player.turn_score = 0
    turn_over = false

    until turn_over
      dice_to_roll = 6 
      roll = @dice_set.roll(dice_to_roll)
      puts "Rolled: #{roll.inspect}"

      roll_score = score(roll)
    
    end
  end
end