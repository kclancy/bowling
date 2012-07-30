require 'bowling'

module Bowling
  describe Bowling do
    describe Game do
      before(:each) do
        @game = Game.new
      end

      it 'can create the Game class' do
        @game.should be_instance_of Game
      end

      it 'can have a score set' do
        @game.score = "XXXXXXXXXX"
      end

      it 'can score a single roll of the bowl' do
        @game.scoreRoll("X").should eq 10
        @game.scoreRoll("5").should eq 5
      end

      it 'can score a game with a lot of misses' do
        @game.score = "9-9-9-9-9-9-9-9-9-9-"
        @game.result.should eq  90
      end

      it 'can score the perfect game' do
        @game.score = "XXXXXXXXXX"
        @game.result.should eq 300
      end

      it 'can score bonus points for a strike' do
        @game.score = "222X541111"
        @game.bonusScore(3).should eq 9
      end

      # it 'can score a game with a lot of spares' do
      #   @game.score = "5/5/5/5/5/5/5/5/5/5/5"
      #   @game.result.should eq 150
      # end

    end    
  end
end