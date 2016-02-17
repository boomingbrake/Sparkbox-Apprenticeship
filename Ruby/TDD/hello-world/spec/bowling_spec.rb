require_relative "spec_helper"
require_relative "../lib/bowling_game"
require_relative "../lib/fake_console"

RSpec.describe BowlingGame do

  context 'when the game starts'
  it 'has a score of 0' do
    console = FakeGreetConsole.new
    game = BowlingGame.new console
    expect(game.score_game).to eq(0)
  end

  context 'after first roll'
  it 'has stored knocked down pins' do
    game = BowlingGame.new
    game.add_to_rolls(2) console
    expect(game.score_game).to eq([2])
  end

  context 'after open frames'
  it 'has a score of 25' do
    console = FakeGreetConsole.new
    game = BowlingGame.new console
    game.add_to_rolls(2)
    game.add_to_rolls(5)
    game.add_to_rolls(6)
    game.add_to_rolls(3)
    game.add_to_rolls(7)
    game.add_to_rolls(2)
    expect(game.score_game).to eq(25)
  end

  context 'after game of all 5s'
  it 'has a score of 150' do
    console = FakeGreetConsole.new
    game = BowlingGame.new console
    21.times { game.add_to_rolls(5) }
    expect(game.score_game).to eq(150)
  end

  context 'when I suck at bowling but managed a spare'
  it 'has a score of 87pw' do
    console = FakeGreetConsole.new
    game = BowlingGame.new console
    game.add_to_rolls(2)
    game.add_to_rolls(5)
    game.add_to_rolls(6)
    game.add_to_rolls(3)
    game.add_to_rolls(7)
    game.add_to_rolls(2)
    game.add_to_rolls(5)
    game.add_to_rolls(5)
    game.add_to_rolls(2)
    game.add_to_rolls(5)
    game.add_to_rolls(6)
    game.add_to_rolls(3)
    game.add_to_rolls(7)
    game.add_to_rolls(2)
    game.add_to_rolls(2)
    game.add_to_rolls(5)
    game.add_to_rolls(6)
    game.add_to_rolls(3)
    game.add_to_rolls(7)
    game.add_to_rolls(2)

    expect(game.score_game).to eq(87)
  end

  context 'after game of all strikes'
  it 'has a score of 300' do
    console = FakeGreetConsole.new
    game = BowlingGame.new console
    12.times { game.add_to_rolls(10)}
    expect(game.score_game).to eq(300)
  end

end
