class Dealer
attr_reader :dealer_hand

  def initialize(dealer)
    @dealer = dealer
    @dealer_hand = []
  end

  def receive_cards(cards)
      @dealer_hand += cards
  end

  def dealer_deal(cards)
    @dealer_hand += cards
    @dealer_hand[0]
  end

  def hand_value
    total = 0
    @hand.each {|card| total += card.value }
    total
  end

  

end
