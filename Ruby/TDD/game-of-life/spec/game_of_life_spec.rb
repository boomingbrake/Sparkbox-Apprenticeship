require_relative "spec_helper"
require_relative "../lib/game_of_life"
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

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


=======
=======
>>>>>>> 3d41d49d270840d0db632c7e3cf2b86d62eb669c
=======
>>>>>>> 3d41d49d270840d0db632c7e3cf2b86d62eb669c
require_relative "../lib/cell"

RSpec.describe Cell do

  context "when created"
  it "has zero living neighbors" do
    game_cell = Cell.new
    expect(game_cell.tot_living_neighbors).to eq(0)
  end

  context "when has 2 or 3 living neighbors"
  it "lives" do

    game_cell = Cell.new(0,0,"*")
    game_cell.tot_living_neighbors = 2
    expect(game_cell.get_new_state).to be_truthy
  end

  context "when has 3 living neighbors"
  it "lives due to reproduction" do
    game_cell = Cell.new

    game_cell.tot_living_neighbors = 3
    expect(game_cell.get_new_state).to eq("*")
  end

  context "when has more than 3 living neighbors"
  it "dies due to over population" do
    game_cell = Cell.new
    game_cell.tot_living_neighbors = 4
    expect(game_cell.get_new_state).to eq("_")
  end

  context "when has less than 2 living neighbors"
  it "dies due to under population" do
    game_cell = Cell.new
    game_cell.tot_living_neighbors = 1
    expect(game_cell.get_new_state).to eq("_")
  end

end

RSpec.describe GameOfLife do

  context "when game starts"
  it "is something" do
      GameOfLife.new([])
  end


  context "when given a grid"
  it "can analyze" do
    grid = [
      Cell.new(0,0,"*"),Cell.new(0,1,"*"),
      Cell.new(1,0,"_"),Cell.new(1,1,"*")
    ]

    game_of_life = GameOfLife.new(grid)

    expect(game_of_life.analyze_grid_state_create_next).to eq(
    [[0,0,"*"],[0,1,"*"],
    [1,0,"*"],[1,1,"*"]])
  end

  context "when given larger grid"
  it "can analyze" do
    grid = [
      Cell.new(0,0,"_"),Cell.new(0,1,"_"),Cell.new(0,2,"*"),Cell.new(0,3,"_"),
      Cell.new(1,0,"_"),Cell.new(1,1,"*"),Cell.new(1,2,"*"),Cell.new(1,3,"*"),
      Cell.new(2,0,"_"),Cell.new(2,1,"*"),Cell.new(2,2,"_"),Cell.new(2,3,"*"),
      Cell.new(3,0,"*"),Cell.new(3,1,"*"),Cell.new(3,2,"*"),Cell.new(3,3,"*")
    ]

    game_of_life = GameOfLife.new(grid)

    expect(game_of_life.analyze_grid_state_create_next).to eq(
    [[0, 0, "_"], [0, 1, "*"], [0, 2, "*"], [0, 3, "*"],
    [1, 0, "_"], [1, 1, "*"], [1, 2, "_"], [1, 3, "*"],
    [2, 0, "_"], [2, 1, "_"], [2, 2, "_"], [2, 3, "_"],
    [3, 0, "*"], [3, 1, "*"], [3, 2, "_"], [3, 3, "*"]])
  end

  context "when given a grid"
  it "can analyze a single cell" do
    grid = [
      Cell.new(0,0,"_"),Cell.new(0,1,"_"),Cell.new(0,2,"*"),Cell.new(0,3,"_"),
      Cell.new(1,0,"_"),Cell.new(1,1,"*"),Cell.new(1,2,"*"),Cell.new(1,3,"*"),
      Cell.new(2,0,"_"),Cell.new(2,1,"*"),Cell.new(2,2,"_"),Cell.new(2,3,"*"),
      Cell.new(3,0,"*"),Cell.new(3,1,"*"),Cell.new(3,2,"*"),Cell.new(3,3,"*")
    ]

    game_of_life = GameOfLife.new(grid)
    next_generation = game_of_life.analyze_grid_state_create_next
    expect(game_of_life.have_live_cell_at(1,1)).to be_truthy

  end
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> ad834d8941a6fb0c3effb62adce24d7a48468c1d
=======
>>>>>>> 3d41d49d270840d0db632c7e3cf2b86d62eb669c
=======
>>>>>>> 3d41d49d270840d0db632c7e3cf2b86d62eb669c
end
