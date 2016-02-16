module Randomizable

  #random number generator
  def random_number(max)
      gen_random = Random.new.rand(0..max)
  end

end
