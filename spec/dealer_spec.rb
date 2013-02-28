require 'spec_helper'


describe 'Dealer' do 

  context '#dealer_cards' do 
    it "shows one of dealers two cards" do
      dealer = Dealer.new("Dealer")
      cards = [Card.new('A', 'Diamonds'), Card.new('A', 'Hearts')]
      dealer.dealer_deal(cards).should eq cards.first
    end
  end
end