require 'terminal-table'

def output_table(grid)
  grid_rows = grid.map{|cell| cell.row}.uniq

  table_rows = []
  grid_rows.each do |row|
    table_rows << [grid.select {|grid_cell| grid_cell.row == row}.map{|cell| cell.state}]
  end
  table = Terminal::Table.new :rows => table_rows

  puts table
end
