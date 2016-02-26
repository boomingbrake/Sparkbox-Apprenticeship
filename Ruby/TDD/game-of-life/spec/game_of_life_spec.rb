require_relative "spec_helper"
require_relative "../lib/game_of_life"
require_relative "../lib/cell"

RSpec.describe Cell do

  context "when created"
  it "has zero living neighbors" do
    game_cell = Cell.new
    expect(game_cell.tot_living_neighbors).to eq(0)
  end

  context "when has 2 or 3 living neighbors"
  it "lives" do
<<<<<<< HEAD
    game_cell = Cell.new(0,0,"*")
=======
    game_cell = Cell.new
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
    game_cell.tot_living_neighbors = 2
    expect(game_cell.get_new_state).to eq("*")
  end

  context "when has 3 living neighbors"
  it "lives due to reproduction" do
    game_cell = Cell.new
<<<<<<< HEAD
    game_cell.tot_living_neighbors = 3
=======
    game_cell.tot_living_neighbors = 2
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
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
<<<<<<< HEAD
      Cell.new(0,0,"*"),Cell.new(0,1,"*"),
      Cell.new(1,0,"_"),Cell.new(1,1,"*")
=======
      Cell.new(0,0,"*"),
      Cell.new(0,1,"*"),
      Cell.new(1,0,"_"),
      Cell.new(1,1,"*")
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
    ]

    game_of_life = GameOfLife.new(grid)

<<<<<<< HEAD
    expect(game_of_life.analyze_grid_create_next_generation).to eq(
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

    expect(game_of_life.analyze_grid_create_next_generation).to eq(
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
    next_generation = game_of_life.analyze_grid_create_next_generation
    expect(game_of_life.have_live_cell_at(1,1)).to eq("*")
=======
    expect(game_of_life.analyze_grid_state_create_next).to eq([[0,0,"*"],[0,1,"*"],[1,0,"*"],[1,1,"*"]])
>>>>>>> fdd56a8520fd543b9c20c8d8e1496c4c144ff923
  end
end
