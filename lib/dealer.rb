class Dealer
  include Person
  attr_reader :hand

  def initialize(dealer)
    @dealer = dealer
    @hand = []
  end

  def dealer_deal(cards)
    @hand += cards
    @hand[0]
  end

  

end
