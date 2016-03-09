require_relative "game_of_life"
require_relative "cell"
require_relative "table.rb"

grid = [Cell.new(0,0, "*"),Cell.new(0,1, "_"),
        Cell.new(1,0, "*"),Cell.new(1,1, "*")]

game_of_life = GameOfLife.new(grid)


output_table(game_of_life.generate_new_grid)
