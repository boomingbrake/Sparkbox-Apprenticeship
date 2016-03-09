require_relative "spec_helper"
require_relative "../lib/navigator"

RSpec.describe Class do

  context "when navigator is called on a 2x2 grid"
  it "returns an array of neighbors"  do
    cell = [0,0]
    grid = [[0, 1], [1, 1]]

    expect(navigator(cell, grid)).to eq({[0, 0]=>[[0, 1], [1, 0], [1, 1]]})
  end

  context "when navigator is called"
  it "returns an array of neighbors"  do
    cell = [0,0]
    grid = [[0, 1, 0], [1, 0, 1], [0, 1, 0]]

    expect(navigator(cell, grid)).to eq({[0, 0]=>[[0, 1], [1, 0], [1, 1]]})
  end

  context "when navigator is called for center cell"
  it "returns an array of neighbors"  do
    cell = [0,1]
      grid = [[0, 1, 1], [1, 1, 1],[0,1,1]]

    expect(navigator(cell, grid)).to eq({[0, 1]=>[[0, 0], [0, 2], [1, 0], [1, 1], [1, 2]]})
  end

end
