require_relative "spec_helper"
require_relative "../lib/game"
require_relative "../lib/fake_console"

RSpec.describe Game do


  #moo oink game
  context 'when moo oink game is selected'
  it 'MooOink' do
    console = FakeConsole.new ["Jimmy Johns", 2, "moo", "n"]
    game = Game.new console
    game.play
    expect(console.last_asked).to eq(["Enter Name: ", "What game do you want to play?\n0: Name Game\n1: Number Game\n2: Moo or Oink\n3: Bowling Calculator\n", "Moo or Oink: ", "Do you want to play again? (y/n)"])
  end

  #name game
  context 'when name game is selected'
  it 'asks you to choose what to with name' do
    console = FakeConsole.new ["Jimmy Johns", 0, "a", "n"]
    game = Game.new console
    game.play
    expect(console.last_asked).to eq(["Enter Name: ", "What game do you want to play?\n0: Name Game\n1: Number Game\n2: Moo or Oink\n3: Bowling Calculator\n", "What do you want to do with your name?\nA: uppercase\nB: reverse\nC: lowercase ", "Do you want to play again? (y/n)"])
  end

  #bowling game
  context 'when bowling game is selected'
  it 'asks you to enter pins' do
    console = FakeConsole.new ["Jimmy Johns", 3, 4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4, "n"]
    game = Game.new console
    game.play
    expect(console.last_asked).to eq(["Enter Name: ", "What game do you want to play?\n0: Name Game\n1: Number Game\n2: Moo or Oink\n3: Bowling Calculator\n", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "How many pins did you knock down this roll?:", "Do you want to play again? (y/n)"])
  end

end
