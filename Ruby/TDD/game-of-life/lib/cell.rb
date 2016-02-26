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
<<<<<<< HEAD
    (tot_living_neighbors == 2 && state == "*") || tot_living_neighbors == 3 ? "*" : "_"
=======
    new_state = state
    new_state = "_" if tot_living_neighbors < 2 || tot_living_neighbors > 3
    new_state = "*" if tot_living_neighbors == 2 || tot_living_neighbors == 3
    new_state
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
  end

end
