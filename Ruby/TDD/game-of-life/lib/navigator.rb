def navigator(cell, grid)
  neighbors = []
  grid.each_with_index do |row, x|
    row.each_with_index do |value, y|
      neighbors << [x,y] if x.between?(cell[0]-1, cell[0]+1) && y.between?(cell[1]-1, cell[1]+1)
    end
  end

  neighbors.delete_at(neighbors.index(cell))
  return {cell => neighbors}
end
