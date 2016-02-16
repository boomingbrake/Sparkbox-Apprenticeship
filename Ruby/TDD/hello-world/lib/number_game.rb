require_relative "randomizable"

class NumberGame
  include Randomizable
  attr_reader :console

  def initialize(console)
    @console = console
  end

  # guess number game
  def name
    "Number Game"
  end

  def play(player_name)
    generated_number = random_number(5)
    loop do
      choice = console.ask("Guess a number between 0 and 5: ")
      if choice.to_i == generated_number
        console.tell("\nCORRECT!").colorize(:green)
        break
      else
        console.tell("\nTry again.").colorize(:red)
      end
    end
  end
end
