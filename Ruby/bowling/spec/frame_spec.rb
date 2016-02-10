require "spec_helper"
require_relative "lib/frame"

RSpec.describe Frame do

  context 'when turn is taken' do
    it 'is storing roll values' do
      frame = Frame.new(8,1)
      expect(frame.rolls).to eq([8, 1])
    end
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
