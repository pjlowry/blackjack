require 'spec_helper'

  

describe 'Player' do 
  context '#name' do 
    it 'initializes the name of the player' do 
      player = Player.new('Bob')
      player.name.should eq 'Bob'
    end
  end

  context '#receive_cards' do 
    it 'give player a card' do 
      player = Player.new("Bob")
      cards = [Card.new('4', 'Diamonds'), Card.new('A', 'Hearts')]
      player.receive_cards(cards).to_s.should eq "[4 of Diamonds, A of Hearts]"
    end
  end



  context '#hand_value' do 
    it "shows the hand value" do
      player = Player.new("Bob")
      cards = [Card.new('3', 'Diamonds'), Card.new('4', 'Hearts')]
      deck = Deck.new 
      player.receive_cards(cards)
      player.hand_value.should eq 7
      
    end
  end



end