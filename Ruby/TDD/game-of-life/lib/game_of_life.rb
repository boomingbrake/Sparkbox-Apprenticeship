
require_relative "navigator"
require_relative "runner"

class GameOfLife
  def initialize(grid, life=1, death=0)
    @grid = grid
    @life = life
    @death = death
  end

  def get_next_generation
    next_grid = []
    @grid.each_with_index do |row, x|
      created_row = []
      row.each_with_index do |value, y|
        current_cell = navigator([x,y], @grid)
        new_state = runner(current_cell, @grid, @life, @death)
        created_row << new_state
      end
      next_grid << created_row
    end
    return next_grid
  end
end
