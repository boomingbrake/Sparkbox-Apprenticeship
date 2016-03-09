def runner(cell_hash, grid, life, death)
  tot_living_neighbors = 0
  cur_cell_state = death

    grid.each_with_index do |row, x|
      row.each_with_index do |value, y|
        cur_cell_state = value if cell_hash.has_key?([x,y])
        cell_hash.each_value  do |neighbor|
          if neighbor.include?([x,y])
            tot_living_neighbors += 1 if value == life
          end
        end
      end
    end

    return (tot_living_neighbors == 2 && cur_cell_state == life) || tot_living_neighbors == 3 ? life : death
end
