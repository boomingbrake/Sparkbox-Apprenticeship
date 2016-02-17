require_relative "spec_helper"
require_relative "../lib/game"
require_relative "../lib/fake_console"
require_relative "../lib/number_fake_console"

RSpec.describe Game do

  context "when game is started"
  it "greets the user" do
    console = FakeConsole.new
    game = Game.new console

    game.greet

    expect(console.last_putsed).to eq("Hello Jimmy Johns! ")
  end

  #moo oink game
  context 'when moo oink game is selected'
  it 'asks you to enter pins' do
    console = FakeConsole.new
    game = MooOinkGame.new console

    game.play("Jimmy Johns")
    expect(console.last_asked).to eq("Moo or Oink: ")
  end

  #name game
  context 'when name game is selected'
  it 'asks you to choose what to with name' do
    console = FakeConsole.new
    game = NameGame.new console

    game.play("Jimmy Johns")
    expect(console.last_asked).to eq("What do you want to do with your name?\nA: uppercase\nB: reverse\nC: lowercase ")
  end

  #number game
  context 'when number game is selected'
  it 'asks them to pick a number' do
    console = FakeNumberConsole.new
    game = NumberGame.new console

    game.play("Jimmy Johns")
    expect(console.last_asked).to eq("Guess a number between 0 and 5: ")
  end

  #bowling game
  context 'when bowling game is selected'
  it 'asks you to enter pins' do
    console = FakeConsole.new
    game = BowlingGame.new console

    game.play("Jimmy Johns")
    expect(console.last_asked).to eq("How many pins did you knock down this roll?:")
  end

end
