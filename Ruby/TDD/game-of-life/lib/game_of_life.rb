
class GameOfLife

  attr_reader :next_generation, :board
  def initialize(game_board_of_cells)
    @next_generation = Array.new
    @board = game_board_of_cells
  end

<<<<<<< HEAD
  def analyze_grid_create_next_generation

    generated_life = Array.new
    board.each do |board_cell|

      #find live neighBROS
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1,board_cell.column - 1 ) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1,board_cell.column) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row - 1,board_cell.column + 1 ) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row ,board_cell.column - 1 ) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row ,board_cell.column + 1 ) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1,board_cell.column - 1 ) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1,board_cell.column) == "*"
      board_cell.tot_living_neighbors += 1 if have_live_cell_at(board_cell.row + 1,board_cell.column + 1 ) == "*"

=======
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
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
      generated_life << [board_cell.row, board_cell.column, board_cell.get_new_state]
    end

    generated_life
  end

<<<<<<< HEAD
  def have_live_cell_at(row, column)
    board.each do |board_cell|
      return board_cell.state if board_cell.row == row && board_cell.column == column
    end
  end


=======
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
end
