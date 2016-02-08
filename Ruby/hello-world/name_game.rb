require "./randomizable"
class NameGame
  include Randomizable
  attr_reader :console

  def initialize(console)
    @console = console
  end

  def name
    "Name Game"
  end

  #name game
  def play(player_name)
    choice = console.ask("What do you want to do with your name?\nA: uppercase\nB: reverse\nC: lowercase ").downcase
    name_choice ={"a" => 'upcase', "b" => 'reverse', "c" => 'downcase'}

    puts player_name.send(name_choice[choice])
  end
end