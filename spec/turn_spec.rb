require 'spec_helper'

describe Turn do

  context '#initialize' do
    it 'should accept player as an argument' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.should be_an_instance_of Turn
    end
  end

  context '#over?' do
    it 'should be false at a new turn' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.over?.should be false
    end
  end  

  context '#blackjack?' do
    it 'should be false before the hand is dealt' do 
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.blackjack?.should be false
    end

    it 'should be a false if both the dealer and player get blackjack' do 
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('A', 'Spades'), Card.new('10', 'Hearts')]
      cards2 = [Card.new('Q', 'Spades'), Card.new('A', 'Hearts')]
      player.receive_cards(cards)
      dealer.receive_cards(cards2)
      turn.blackjack?.should be false
    end

    it 'should be true if value is 21' do 
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('A', 'Spades'), Card.new('10', 'Hearts')]
      player.receive_cards(cards)
      turn.blackjack?.should be true
    end
  end

  context '#bust?' do
    it 'should be false before the hand is dealt' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.bust?.should be false
    end

    it 'should be true if value is greater than 21' do 
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('A', 'Spades'), Card.new('10', 'Hearts'), Card.new('8', 'Hearts')]
      dealer.receive_cards(cards)
      turn.bust?.should be true
    end
  end

  context '#winner?'do
    it 'should be false at the start of a turn' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.winner?.should be false
    end


    it 'should be true if the dealer busts' do 
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('A', 'Spades'), Card.new('10', 'Hearts'), Card.new('8', 'Hearts')]
      dealer.receive_cards(cards)
      turn.winner?.should be true
    end
  
    it 'should be true if the player is dealt blackjack' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('A', 'Spades'), Card.new('10', 'Hearts')]
      player.receive_cards(cards)
      turn.winner?.should be true
    end

    it 'should be true if the player hand is better than the dealer hand' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('9', 'Spades'), Card.new('10', 'Hearts')]
      cards2 = [Card.new('4', 'Spades'), Card.new('10', 'Hearts')]
      player.receive_cards(cards)
      dealer.receive_cards(cards2)
      turn.winner?.should be true
    end
  end

  context '#push?' do
    it 'should be false at the start of a turn' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      turn.push?.should be_false
    end

    it 'should be true when the dealer and player hand values are equal' do
      player = Player.new("Bob")
      dealer = Dealer.new("dealer")
      turn = Turn.new(player, dealer)
      cards = [Card.new('6', 'Spades'), Card.new('10', 'Hearts')]
      cards2 = [Card.new('6', 'Clubs'), Card.new('10', 'Diamonds')]
      player.receive_cards(cards)
      dealer.receive_cards(cards2)
      turn.push?.should be_true
    end
  end
end
