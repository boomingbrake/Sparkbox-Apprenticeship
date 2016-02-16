require_relative "spec_helper"
require_relative "../lib/game_of_life"

RSpec.describe GameOfLife do

  context "when game starts"
  it "is something" do
      GameOfLife.new
  end

  context "when given a live cell"
  it "is alive" do
    game_of_life = GameOfLife.new
    expect(game_of_life.alive?(1)).to be_truthy
  end

  context "when given a dead cell"
  it "is dead" do
    game_of_life = GameOfLife.new
    expect(game_of_life.alive?(0)).to be_falsey
  end

  context "when given a grid"
  it "can analyze" do
    grid = []
    game_of_life = GameOfLife.new
    game_of_life.analyze_cell_grid(grid)
  end
end
