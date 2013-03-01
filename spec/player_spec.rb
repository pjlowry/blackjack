require 'spec_helper'

describe 'Player' do 
  context '#name' do 
    it 'initializes the name of the player' do 
      player = Player.new('Bob')
      player.name.should eq 'Bob'
    end
  end

end