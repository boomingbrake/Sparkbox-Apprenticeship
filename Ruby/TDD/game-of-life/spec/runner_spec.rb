require_relative "spec_helper"
require_relative "../lib/runner"

RSpec.describe Class do

  # context "when navigator is called on a 2x2 grid"
  # it "returns a new state of the cell as alive"  do
  #   cell_hash = {[0,0] => [[0, 1], [1, 0], [1, 1]]}
  #   grid = [[0, 1], [1, 1]]
  #
  #   expect(runner(cell_hash, grid, 1, 0)).to eq(1)
  # end
  #
  # context "when navigator is called on a 2x2 grid"
  # it "returns a new state of the cell as dead"  do
  #   cell_hash = {[0,0] => [[0, 1], [1, 0], [1, 1]]}
  #   grid = [[1, 0], [0, 0]]
  #
  #   expect(runner(cell_hash, grid, 1, 0)).to eq(0)
  # end

  context "when runner method is given a cell and it's neighbors"
  it "returns the new state of the cell"  do
    cell_hash = {[1, 2]=>[[0, 1], [0, 2], [1, 1], [2, 1], [2, 2]]}
    grid = [[0, 1, 1], [1, 1, 1],[0,1,1]]
    expect(runner(cell_hash, grid, 1, 0)).to eq(0)
  end

end
