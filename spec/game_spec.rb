require 'spec_helper'

describe 'Game' do 
  context '#over?' do
    it 'tells us the game is not over' do
      game = Game.new
      game.over?.should eq false
    end
  end
end


