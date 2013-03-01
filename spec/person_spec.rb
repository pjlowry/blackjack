require 'spec_helper'

class TestPerson
  include Person
end

describe Person do

  context '#receive_cards' do 
    it 'give person a card' do 
      person = TestPerson.new
      cards = [Card.new('4', 'Diamonds'), Card.new('A', 'Hearts')]
      person.receive_cards(cards).to_s.should eq "[4 of Diamonds, A of Hearts]"
    end
  end

  context '#hand_value' do 
    it "shows the hand value" do
      person = TestPerson.new
      cards = [Card.new('3', 'Diamonds'), Card.new('4', 'Hearts')]
      deck = Deck.new 
      person.receive_cards(cards)
      person.hand_value.should eq 7
      
    end
  end

  context '#discard_cards' do 
    it 'gives us an empty hand at the end of a turn' do 
      person = TestPerson.new
      cards = [Card.new('3', 'Diamonds'), Card.new('4', 'Hearts')]
      deck = Deck.new 
      person.receive_cards(cards)
      person.discard_cards.should eq []

    end
  end
end