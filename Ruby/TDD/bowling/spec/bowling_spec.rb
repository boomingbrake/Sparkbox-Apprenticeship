require "spec_helper"
require_relative "../lib/bowling"

RSpec.describe Bowling do
  context 'when game is started'
   it 'has a score of 0' do
     bowling = Bowling.new
     expect(bowling.score).to eq(0)
   end

   context 'after first frame'
   it 'is storing frame pins' do
     bowling = Bowling.new
     bowling.store_frame(1,8)
     expect(bowling.frames).to eq([[1,8]])
   end

   context 'when 10 frames are played with all open frames'
     it 'is calculating score' do
       bowling = Bowling.new
       10.times { bowling.store_frame(5,3) }
       expect(bowling.score_game).to eq(80)
     end

     context 'when 10 frames are played with all 5s'
       it 'is calculating score with spares' do
         bowling = Bowling.new
         10.times { bowling.store_frame(5,5) }
         bowling.store_frame(5)
         expect(bowling.score_game).to eq(155)
       end

       context 'when 10 frames are played with all strikes'
         it 'is calculating score with strikes' do
           bowling = Bowling.new
           10.times { bowling.store_frame(10,0) }
           bowling.store_frame(10,10)
           expect(bowling.score_game).to eq(300)
         end

end
