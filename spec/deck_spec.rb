require 'spec_helper'

  
# describe 'Deck' do
#   context '#deck' do
#     it "contains all ranks and suits of our deck" do 
#       deck = Deck.new
#       deck.full_deck.should eq [["A", "Spades"], ["A", "Hearts"], ["A", "Diamonds"], ["A", "Clubs"], ["2", "Spades"], ["2", "Hearts"], ["2", "Diamonds"], ["2", "Clubs"], ["3", "Spades"], ["3", "Hearts"], ["3", "Diamonds"], ["3", "Clubs"], ["4", "Spades"], ["4", "Hearts"], ["4", "Diamonds"], ["4", "Clubs"], ["5", "Spades"], ["5", "Hearts"], ["5", "Diamonds"], ["5", "Clubs"], ["6", "Spades"], ["6", "Hearts"], ["6", "Diamonds"], ["6", "Clubs"], ["7", "Spades"], ["7", "Hearts"], ["7", "Diamonds"], ["7", "Clubs"], ["8", "Spades"], ["8", "Hearts"], ["8", "Diamonds"], ["8", "Clubs"], ["9", "Spades"], ["9", "Hearts"], ["9", "Diamonds"], ["9", "Clubs"], ["10", "Spades"], ["10", "Hearts"], ["10", "Diamonds"], ["10", "Clubs"], ["J", "Spades"], ["J", "Hearts"], ["J", "Diamonds"], ["J", "Clubs"], ["Q", "Spades"], ["Q", "Hearts"], ["Q", "Diamonds"], ["Q", "Clubs"], ["K", "Spades"], ["K", "Hearts"], ["K", "Diamonds"], ["K", "Clubs"]]  
#     end
#   end #passes w/o shuffle

describe 'Deck' do 
  context '#deal' do 
    it "deals a player two random cards from the deck" do
      player = double
      deck = Deck.new
      player.should_receive(:receive_cards)
      deck.deal(player)
    
    end
  end

  context "#hit" do 
    it "gives player additional random card" do 
      deck = Deck.new
      player = double
      player.should_receive(:receive_cards)
      deck.hit(player)

    end
  end

  context '#initialize' do 
    it "creates an instance of deck" do
      deck = Deck.new
      
      deck.should be_an_instance_of Deck
    
    end
  end
end


     
