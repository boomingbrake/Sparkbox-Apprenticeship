

class BowlingGame
  attr_accessor :rolls, :console

  def initialize (console)
    @rolls = Array.new
    @console = console
  end

  def name
    "Bowling Calculator"
  end

  def add_to_rolls(pins)
    rolls << pins
  end

  def sum_of(frame)
    sum = frame.collect { |roll| roll.nil? ? 0 : roll }.reduce(:+)
  end

  def score_game
    score = 0
    i = 1
    while !rolls.empty? && i <= 10 do
      frame = []
      frame << rolls.shift
      frame << rolls.shift if frame[0] != 10

      if sum_of(frame) == 10 #add bonus
        frame << rolls.first
        frame << rolls[1] if frame.first == 10 #strike extra roll
      end
      score += sum_of(frame)
      i+=1
    end
    score
  end

  def play(player_name)
    20.times do
      pins = console.ask "How many pins did you knock down this roll?:"
      add_to_rolls(pins.nil? ? 0 : pins.to_i )
    end
    console.tell "You score was: #{score_game}"
  end

end
