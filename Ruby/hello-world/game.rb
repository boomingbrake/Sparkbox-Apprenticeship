require "colorize"
require "./moo_oink"
require "./name_game"
require "./number_game"
require "./shell_console"
require "./randomizable"

class RecordingConsole
  attr_reader :last_asked
  def ask(question)
    @last_asked = question
  end
end

class FakeConsole
  attr_reader :last_putsed

  def puts(message)
    @last_putsed = message
  end

  def ask(question)
    "Jimmy Johns"
  end
end

class GameTest

  def greet_asks_user_for_name
    console = RecordingConsole.new
    game = Game.new console

    game.greet

    expect(console.last_asked).to eq("Enter Name: ")
  end

  def says_hello_to_the_player
    console = FakeConsole.new

    game = Game.new(console)

    game.greet

    expect(console.last_putsed).to eq("Hello Jimmy Johns")
  end
end

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
    console.puts "Hello #{player_name}! ".colorize(:yellow)
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

    puts "Thanks for playing!".colorize(:yellow)
  end

end

  # game play code below

  game = Game.new
  game.play
