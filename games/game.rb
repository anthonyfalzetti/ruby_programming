require_relative 'die'
require_relative 'game_turn'
class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_player)
    @players << a_player
  end
  
  def print_stats
    strong_players = @players.select { |player| player.strong? } 
    wimpy_players = @players.reject { |player| player.strong? } 
  end
  
  def play(rounds)
    puts "There are #{@players.size} players in #{@title}."
    
    @players.each do |player|
      puts player
    end
    
    1.upto(rounds) do |round|
      puts "\nRound #{round}"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end
end
