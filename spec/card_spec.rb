require 'spec_helper'

describe 'Card' do 
  context '#initialize' do 
    it 'gives card a rank and suit' do
      card = Card.new('2', 'Spades')
      card.should be_an_instance_of Card
    end
  end

  context '#to_s' do 
    it 'tells you suit and rank of a card' do 
      card = Card.new('3', 'Hearts')
      card.to_s.should eq '3 of Hearts'
    end
  end

  context '#value' do 
    it '10 for a king' do 
      card = Card.new('K', 'Hearts')
      card.value.should eq 10
    end
  end

  context '#value' do 
    it '10 for a jack' do
      card = Card.new('J', 'Diamonds')
      card.value.should eq 10
    end
  end

  context '#value' do 
    it '11 for a ace' do
      card = Card.new('A', 'Diamonds')
      card.value.should eq 11
    end
  end


end