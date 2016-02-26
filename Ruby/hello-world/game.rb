require_relative "shell_console"

available_games = Array.new

Dir[File.dirname(__FILE__) + '/games/*.rb'].each do |file|
  require_relative './games/'+File.basename(file)
  class_name = File.basename(file, ".rb").split('_').collect(&:capitalize).join
  available_games << Object.const_get(class_name).new(ShellConsole.new)
end

class Game

  def initialize(available_games,console = ShellConsole.new)
    @games = available_games
    @console = console
    @players = []
<<<<<<< HEAD
=======
    play
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
  end

  def play
    greet
    round = 1
    begin
      @players.each do |player|
<<<<<<< HEAD
        @console.tell("\nOk, #{player} you're up!")
        choose_game player
      end
      play_again = @console.ask("\nRound #{round} complete. Play another round? (y/n)")
      round += 1
    end while play_again == 'y'
    @console.tell "\nThanks for playing! Byyyyyye"
=======
        @console.tell("Ok, #{player} you're up!")
        choose_game player
      end
      play_again = @console.ask("Round #{round} complete. Play another round? (y/n)")
      round += 1
    end while play_again == 'y'
    @console.tell "Thanks for playing! Byyyyyye"
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
  end

  def greet
    @console.tell "Welcome to the Game of Games!! "
    get_players
  end

  def get_players
    begin
      @players << @console.ask("Name of Player:")
      add_more = @console.ask("Add more?(y/n)")
    end while add_more.downcase == 'y'
  end

  def choose_game(player_name)
    choose_game_message = "What game do you want to play?\n"
    @games.each_with_index {|game, i| choose_game_message << "#{i}: #{game.name}\n"}
    option_num = @console.ask choose_game_message
    @games[option_num.to_i].play player_name
  end

end

game_of_games = Game.new(available_games)
game_of_games.play
