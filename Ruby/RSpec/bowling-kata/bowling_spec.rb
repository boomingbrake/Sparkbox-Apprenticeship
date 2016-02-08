require_relative "spec/spec_helper"
require_relative "bowling"
require_relative "frame"

RSpec.describe Frame do

  context 'when less that 10 pins were knocked down' do
    it "is Open" do
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
