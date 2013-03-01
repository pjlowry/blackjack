module Person
  attr_reader :hand

  def initialize
    @hand = []
  end

  def receive_cards(cards)
    @hand += cards
  end

  def hand_value
    total = 0
    @hand.each {|card| total += card.value }
    total
  end

  def discard_cards
    @hand.clear
  end



end