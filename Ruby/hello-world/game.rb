require "./moo_oink"
require "./name_game"
require "./number_game"
require "./shell_console"
require "./randomizable"


class Game

  attr_accessor :player_name
  attr_reader :games, :console

  def initialize(console = ShellConsole.new)
    @games = [ NameGame.new(console),NumberGame.new(console), MooOink.new(console)]
    @console = console
  end

  # gets name and greets
  def greet
    self.player_name = console.ask "Enter Name: "
    console.tell "Hello #{player_name}! "
  end

  def choose_game
    choose_game_message = "What game do you want to play?\n"
    games.each_with_index {|game, i| choose_game_message << "#{i}: #{game.name}\n"}
    option_num = console.ask choose_game_message
    games[option_num.to_i].play player_name
  end


  def play
    greet

    begin
      choose_game
      play_again = console.ask("Do you want to play again? (y/n)")
    end while play_again == 'y'

    console.tell "Thanks for playing!"
  end

end

  # game play code below

  game = Game.new
  game.play
