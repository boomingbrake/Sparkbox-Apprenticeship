require_relative "randomizable"
# guess moo or oink
class MooOinkGame
  include Randomizable
  attr_reader :console

  def initialize(console)
    @console = console
  end

  def name
    "Moo or Oink"
  end

  def play(player_name)
    moo_oink_game = ["moo", "oink"]

    choice = console.ask("Moo or Oink: ")
    answer = moo_oink_game[random_number(1)]

    if choice.upcase == answer.upcase
      console.tell "Way to go!"
    else
      console.tell "Sorry, the answer was #{answer}"
    end
  end
end
