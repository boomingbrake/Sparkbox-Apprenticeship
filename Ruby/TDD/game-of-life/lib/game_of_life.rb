
class GameOfLife

  attr_reader :next_generation, :board
  def initialize(game_board_of_cells)
    @next_generation = Array.new
    @board = game_board_of_cells
  end

  def analyze_grid_state_create_next

    generated_life = Array.new
    board.each do |board_cell|
      board.each do |neighBRO|

        if neighBRO.row == board_cell.row
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column - 1) && neighBRO.state =="*"
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column + 1) && neighBRO.state =="*"
        end
        #north neighBROS
        if neighBRO.row == (board_cell.row - 1)
          board_cell.tot_living_neighbors += 1 if neighBRO.column == board_cell.column && neighBRO.state =="*"
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column - 1) && neighBRO.state =="*"
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column + 1) && neighBRO.state =="*"
        end
        #south neighBROS
        if neighBRO.row == (board_cell.row + 1)
          board_cell.tot_living_neighbors += 1 if neighBRO.column == board_cell.column && neighBRO.state =="*"
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column - 1) && neighBRO.state =="*"
          board_cell.tot_living_neighbors += 1 if neighBRO.column == (board_cell.column + 1) && neighBRO.state =="*"
        end
      end
      generated_life << [board_cell.row, board_cell.column, board_cell.get_new_state]
    end

    generated_life
  end

end
