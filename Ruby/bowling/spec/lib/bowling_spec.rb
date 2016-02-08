require "../spec_helper"
require_relative "bowling"
require_relative "frame"

RSpec.describe Frame do

  context 'when turn is taken' do
    it 'is storing roll values'
    frame = Frame.new(8,1)
    expect(frame.rolls).to eq(8)
  end

  context 'when less that 10 pins were knocked down' do
    it 'is Open' do
      frame = Frame.new(1,8)
      expect(frame).to be_open
    end
  end

  context 'when all 10 pins were knocked down first roll' do
    it "is Strike" do
      frame = Frame.new(10,0)
      expect(frame).to be_strike
    end
  end

  context 'when all 10 pins were knocked down in 2 rolls' do
    it "is Strike" do
      frame = Frame.new(2,8)
      expect(frame).to be_spare
    end
  end
end

RSpec.describe Bowling do
  context 'when game is started'
   it 'has a score of 0' do
     bowling = Bowling.new()
     expect(bowling.score).to eq(0)
   end

end
