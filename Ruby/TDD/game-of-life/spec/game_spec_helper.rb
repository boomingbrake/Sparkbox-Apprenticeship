def have_live_cell_at(board, row, column)
  board.each do |board_cell|
    return board_cell.state if board_cell.row == row && board_cell.column == column
  end
end
