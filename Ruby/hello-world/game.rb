require_relative "moo_oink"
require_relative "name_game"
require_relative "number_game"
require_relative "shell_console"
require_relative "randomizable"


class Game

  attr_reader :games, :console

  def initialize(console = ShellConsole.new)
    @games = [ NameGame.new(console),NumberGame.new(console), MooOink.new(console)]
    @console = console
    @players = []
  end

  # gets name and greets
  def greet
    console.tell "Welcome to the Game of Games!! "
    get_players
  end

  def get_players
    begin
      @players << console.ask("Name of Player:")
      add_more = console.ask("Add more?(y/n)")
    end while add_more.downcase == 'y'
  end

  def choose_game(player_name)
    choose_game_message = "What game do you want to play?\n"
    games.each_with_index {|game, i| choose_game_message << "#{i}: #{game.name}\n"}
    option_num = console.ask choose_game_message
    games[option_num.to_i].play player_name
  end


  def play
    greet

    begin
      @players.each do |player|
        console.tell("Ok, #{player} you're up!")
        choose_game player
      end
      play_again = console.ask("Round complete. Play another round? (y/n)")
    end while play_again == 'y'

    console.tell "Thanks for playing! Byyyyyye"
  end

end
