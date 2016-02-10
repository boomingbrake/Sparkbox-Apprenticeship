require_relative "frame"

class Bowling
  attr_accessor :score, :frames
  def initialize
   @score = 0
   @frames =[]
  end

  def store_frame(roll_one, roll_two = 0)
    frames << [roll_one, roll_two]
  end

  def score_game
    @score
  end

end
