class Cell
  attr_accessor :tot_living_neighbors
  attr_reader :row, :column, :state

  def initialize(row=0, column=0, state="_")
    @row = row
    @column = column
    @state = state
    @tot_living_neighbors = 0
  end

  def get_new_state
    (tot_living_neighbors == 2 && state == "*") || tot_living_neighbors == 3 ? "*" : "_"
  end

end
