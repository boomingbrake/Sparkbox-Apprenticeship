
class GameOfLife

  attr_reader :next_generation, :board
  def initialize(game_board_of_cells)
    @next_generation = Array.new
    @board = game_board_of_cells
  end

  def analyze_grid_state_create_next

    generated_life = Array.new
    board.each do |board_cell|

      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row, board_cell.column - 1) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row, board_cell.column + 1) == "*"

    #north neighBROS
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1, board_cell.column) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1, board_cell.column - 1) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1, board_cell.column + 1) == "*"

    #south neighBROS
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1, board_cell.column) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1,board_cell.column - 1) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1, board_cell.column + 1) == "*"

      generated_life << [board_cell.row, board_cell.column, board_cell.get_new_state]
    end

    generated_life
  end


  def have_live_cell_at(row, column)
    board.each do |board_cell|
      return board_cell.state if board_cell.row == row && board_cell.column == column
    end
  end


end
