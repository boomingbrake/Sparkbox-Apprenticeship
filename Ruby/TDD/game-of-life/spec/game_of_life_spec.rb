require_relative "spec_helper"
require_relative "../lib/game_of_life"

RSpec.describe GameOfLife do

  context "when new GameOfLife is started"
  it "is a thing that accepts a grid" do
    grid = []
    game = GameOfLife.new(grid)
  end

  context "when GameOfLife"
  it "accepts custom life and death" do
    grid = []
    life = "*"
    death = "_"
    game = GameOfLife.new(grid, life, death)
  end

  context "when GameOfLife"
  it "has a method that spits out grid" do
    grid = [[0, 1], [1, 1]]
    game = GameOfLife.new(grid)
    expect(game.get_next_generation).to be_an_instance_of(Array)
  end

  context "when GameOfLife"
  it "has a method that spits out grid" do
    grid = [[":|", ":)"], [":)", ":)"]]
    game = GameOfLife.new(grid, ":)", ":|")
    expect(game.get_next_generation).to eq([[":)", ":)"],[":)", ":)"]])
  end

  context "when GameOfLife"
  it "has a method that spits out grid" do
    grid = [[0, 1, 1], [1, 1, 1],[0,1,1]]
    game = GameOfLife.new(grid)
    expect(game.get_next_generation).to eq([[1,0, 1],[1, 0,0],[1,0,1]])
  end

end
