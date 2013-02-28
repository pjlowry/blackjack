class Player
  attr_reader :name, :hand

  def initialize(name)
    @name = name
    @hand = []
    @dealer_hand = []
  end

  def receive_cards(cards)
    @hand += cards
  end

  def hand_value
    total = 0
    @hand.each {|card| total += card.value }
    total
  end


  def to_s
    "#{@name}"
    
  end
  

end