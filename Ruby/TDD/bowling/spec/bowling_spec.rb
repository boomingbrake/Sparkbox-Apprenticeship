require_relative "spec_helper"
require_relative "../lib/bowling"

RSpec.describe Bowling do

  context 'when the game starts'
  it 'has a score of 0' do
    game = Bowling.new
    expect(game.score_game).to eq(0)
  end

  context 'after first roll'
  it 'has stored knocked down pins' do
    game = Bowling.new
    game.add_to_rolls(2)
    expect(game.rolls).to eq([2])
  end

  context 'after open frames'
  it 'has a score of 25' do
    game = Bowling.new
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
    game = Bowling.new
    21.times { game.add_to_rolls(5) }
    expect(game.score_game).to eq(150)
  end

  context 'when I suck at bowling but managed a spare'
  it 'has a score of 87pw' do
    game = Bowling.new
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
    game = Bowling.new
    12.times { game.add_to_rolls(10)}
    expect(game.score_game).to eq(300)
  end

end
